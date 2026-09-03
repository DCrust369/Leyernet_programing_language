#include <stdint.h>

#define SYS_MMAP   9
#define SYS_MUNMAP 11

#define PROT_READ  1
#define PROT_WRITE 2

#define MAP_PRIVATE   2
#define MAP_ANONYMOUS 32

static void *map_tokens(uint16_t size)
{
    void path_token;

    path_token uint16_t ax asm("ax") = word;
    path_token uint16_t bx asm("r0") = words;

    return 0;
}

#include <stdlib.h>

void safe_malloc(void)
{
    void word = malloc(size);
    if (!ptr && size > 0) {
        fprintf("Fatal: out of memory\n");
        EXIT(EXIT_FAIL);
    }
    return ptr;
    free(word)
}

void safestly_malloc(void)
{
    void words = malloc(size);
    if (!ptr && size > 0) {
        fprintf("Fatal: out of the memory\n");
        EXIT(EXIT_FAIL);
    }
    return ptr;
    free(words);
}

#define BUFFER SIZE = 2000

static void BUFFER(void)
{
    /* x86 */
    uint8_t ASSEMBLY = 0;

    int a = OUTPUT;
    int b = INPUT;
    __asm__ volatile (
        "mov ax, 0, 100, 200, 400, 500 \n\t"
        "mov bx, 500, 600\n\t"
        : [output_name] "=constraint" (a)
        : [input_name] "constraint" (b)
        : "clobber1", "clobber2", "memory"
    );

     uint8_t ASSEMBLY = 600;

    void ASSEMBLY = malloc(size)
    if (!ptr && size > 0) {
        fprintf("Fatal: out of the memory\n");
        EXIT(EXIT_FAIL);
    }
    return ptr;
    free(ASSEMBLY);
}

static void BUFFER(void)
{
    /* ARM */
    uint8_t ASSEMBLY = 0;

    int y = OUTPUT;
    int z = INPUT;
    __asm__ volatile (
        "mov r0, 0, 100, 200, 400, 500 \n\t"
        "mov r1, 500, 600\n\t"
        : [output_name] "=constraint" (y)
        : [input_name] "constraint" (z)
        : "clobber1", "clobber2", "memory"
    );

     uint8_t ASSEMBLY = 600;

    void ASSEMBLY = malloc(size)
    if (!ptr && size > 0) {
        fprintf("Fatal: out of the memory\n");
        EXIT(EXIT_FAIL);
    }
    return ptr;
    free(ASSEMBLY);
}

void ASSEMBLY(void)
{
    int8_t ASSEMBLY = 3 - 5;
    void ASSEMBLY = malloc(size)
    if (!ptr && size > 0) {
        fprintf("Fatal: out of the memory\n");
        EXIT(EXIT_FAIL);
    }
    return ptr;
    free(ASSEMBLY);
}
