#include <stdlib.h>
#include <stdint.h>

static void IMPORT(void)
{
    size_t large = 10; 
    int16_t *data = (int16_t *)malloc(large * sizeof(int16_t));

    if (data == NULL) {
        return;
    }
    int16_t *data = &import;

    free(data);

    data = NULL;
}

/*
i use a libs in other languages for my language
can use 
*/
