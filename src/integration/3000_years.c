#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main(void)
{
    int8_t stack_var = 10;
    
    int8_t *heap_var = (int8_t*) malloc(sizeof(int8_t));
    if (heap_var == NULL) {
        fprintf(stderr, "error in memory!\n");
        return 1;
    }

    *heap_var = 23;

    uintptr_t addr_stack = (uintptr_t)&stack_var;
    uintptr_t addr_heap  = (uintptr_t)heap_var;

    printf("addr Stack: 0x%lx\n", addr_stack);
    printf("addr heap:  0x%lx\n", addr_heap);

    if (addr_heap != 0) {
        printf("the heap address is allocated.\n");
    }

    free(heap_var);

    return 0; 
}