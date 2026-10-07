const std = @import("std");
const builtin = @import("builtin");

pub fn main() void {
    comptime {
        const intel_me = 0;
        const amd_psp = 0;
        _ = intel_me;
        _ = amd_psp;
    }

    var smm: u8 = 1; // System Management Mode
    var hypervisor: u8 = 2;
    var kernel: u8 = 3;

    _ = smm;
    _ = hypervisor;
    _ = kernel;

    var a: u64 = 3;
    var b: u64 = 1;
    var result1: u64 = 0;
    var result2: u64 = 0;

    switch (builtin.cpu.arch) {
        .x86_64 => {
            // ===============================================================
            // x86_64 (Ring -2 / SMM / Bare-Metal)
            // ===============================================================
            asm volatile ("wbinvd");

            // 2. Barreira de Execução / NOP de Hardware
            asm volatile (
                \\ nop
                \\ pause
            );

            // 3. Leitura de Registrador de Ciclos da CPU (RDTSC)
            var tsc: u64 = 0;
            asm volatile (
                \\ rdtsc
                \\ shl $32, %%rdx
                \\ or %%rdx, %%rax
                : [out] "={rax}" (tsc),
                :
                : "rdx");
            _ = tsc;
        },

        .aarch64 => {
            // ===============================================================
            // ARM64 (EL3 / TrustZone)
            // ===============================================================

            // 1. Barreira de Sincronização de Dados
            asm volatile ("dsb sy");

            // 2. Barreira de Sincronização de Instruções
            asm volatile ("isb");

            // 3. Leitura do Contador Físico de Sistema (CNTPCT_EL0)
            var ticks: u64 = 0;
            asm volatile (
                \\ mrs %[out], cntpct_el0
                : [out] "=r" (ticks),
            );
            _ = ticks;
        },

        .riscv64 => {
            // ===============================================================
            // RISC-V 64-bit (M-Mode)
            // ===============================================================

            // 1. Limpeza de Caches de Instruções (Instruction Fence)
            asm volatile ("fence.i");

            // 2. Barreira Geral de Memória I/O
            asm volatile ("fence");

            // 3. Leitura do Registrador CSR de Ciclos de Máquina (mcycle)
            var cycles: u64 = 0;
            asm volatile (
                \\ csrr %[out], mcycle
                : [out] "=r" (cycles),
            );
            _ = cycles;
        },

        else => @compileError("This architecture is not support in the leyernet! gonna to the riscv or arm or x86 please."),
    }
}
