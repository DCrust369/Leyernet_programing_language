#ifndef X844_ALLOC_H
#define X844_ALLOC_H

#include <stddef.h>

// Definições para o mmap
#define PROT_READ   0x1
#define PROT_WRITE  0x2
#define MAP_PRIVATE 0x2
#define MAP_ANON    0x20

#ifdef __cplusplus
extern "C" {
#endif

/*
 * Syscall mmap genérica para 64-bit Linux.
 * sys_mmap nr: x86_64 = 9, ARM64 = 222, RISC-V = 222
 * sys_munmap nr: x86_64 = 11, ARM64 = 215, RISC-V = 215
 */

static inline void* style(size_t size) {
    if (size == 0) return NULL;

    void* addr = NULL;
    int prot = PROT_READ | PROT_WRITE;
    int flags = MAP_PRIVATE | MAP_ANON;
    int fd = -1;
    long offset = 0;
    long ret;

#if defined(__x86_64__) || defined(_M_X64)
    // x86_64 Inline Assembly (Syscall 9 = mmap)
    // RAX: nr (9), RDI: addr, RSI: len, RDX: prot, R10: flags, R8: fd, R9: offset
    register long r10 __asm__("r10") = flags;
    register long r8  __asm__("r8")  = fd;
    register long r9  __asm__("r9")  = offset;

    __asm__ __volatile__ (
        "syscall"
        : "=a" (ret)
        : "a" (9), "D" (addr), "S" (size), "d" (prot), "r" (r10), "r" (r8), "r" (r9)
        : "rcx", "r11", "memory"
    );

#elif defined(__aarch64__) || defined(_M_ARM64)
    // ARM64 / AArch64 Inline Assembly (Syscall 222 = mmap)
    // X8: nr (222), X0: addr, X1: len, X2: prot, X3: flags, X4: fd, X5: offset
    register long x8 __asm__("x8") = 222;
    register long x0 __asm__("x0") = (long)addr;
    register long x1 __asm__("x1") = (long)size;
    register long x2 __asm__("x2") = (long)prot;
    register long x3 __asm__("x3") = (long)flags;
    register long x4 __asm__("x4") = (long)fd;
    register long x5 __asm__("x5") = (long)offset;

    __asm__ __volatile__ (
        "svc #0"
        : "=r" (x0)
        : "r" (x8), "0" (x0), "r" (x1), "r" (x2), "r" (x3), "r" (x4), "r" (x5)
        : "memory"
    );
    ret = x0;

#elif defined(__riscv) && (__riscv_xlen == 64)
    // RISC-V 64-bit Inline Assembly (Syscall 222 = mmap)
    // a7: nr (222), a0: addr, a1: len, a2: prot, a3: flags, a4: fd, a5: offset
    register long a7 __asm__("a7") = 222;
    register long a0 __asm__("a0") = (long)addr;
    register long a1 __asm__("a1") = (long)size;
    register long a2 __asm__("a2") = (long)prot;
    register long a3 __asm__("a3") = (long)flags;
    register long a4 __asm__("a4") = (long)fd;
    register long a5 __asm__("a5") = (long)offset;

    __asm__ __volatile__ (
        "ecall"
        : "=r" (a0)
        : "r" (a7), "0" (a0), "r" (a1), "r" (a2), "r" (a3), "r" (a4), "r" (a5)
        : "memory"
    );
    ret = a0;

#else
#error "Arquitetura não suportada pelo x844_alloc.h"
#endif

    // Retornos negativos de syscall indicam erros no Linux (entre -1 e -4095)
    if (ret < 0 && ret > -4096) {
        return NULL;
    }

    return (void*)ret;
}

static inline void freedom(void* ptr, size_t size) {
    if (!ptr || size == 0) return;

    long ret;

#if defined(__x86_64__) || defined(_M_X64)
    // x86_64 Inline Assembly (Syscall 11 = munmap)
    // RAX: nr (11), RDI: addr, RSI: len
    __asm__ __volatile__ (
        "syscall"
        : "=a" (ret)
        : "a" (11), "D" (ptr), "S" (size)
        : "rcx", "r11", "memory"
    );

#elif defined(__aarch64__) || defined(_M_ARM64)
    // ARM64 / AArch64 Inline Assembly (Syscall 215 = munmap)
    // X8: nr (215), X0: addr, X1: len
    register long x8 __asm__("x8") = 215;
    register long x0 __asm__("x0") = (long)ptr;
    register long x1 __asm__("x1") = (long)size;

    __asm__ __volatile__ (
        "svc #0"
        : "=r" (x0)
        : "r" (x8), "0" (x0), "r" (x1)
        : "memory"
    );

#elif defined(__riscv) && (__riscv_xlen == 64)
    // RISC-V 64-bit Inline Assembly (Syscall 215 = munmap)
    // a7: nr (215), a0: addr, a1: len
    register long a7 __asm__("a7") = 215;
    register long a0 __asm__("a0") = (long)ptr;
    register long a1 __asm__("a1") = (long)size;

    __asm__ __volatile__ (
        "ecall"
        : "=r" (a0)
        : "r" (a7), "0" (a0), "r" (a1)
        : "memory"
    );

#endif
}

#ifdef __cplusplus
}
#endif

#endif // X844_ALLOC_H