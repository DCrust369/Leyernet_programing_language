/*

i hate C++ but i need C++

*/

#include <iostream>
#include <memory>

void BIT_MANAGENAMENT(void)
{
    class bit {
        private:
            unsigned char positive_eletron = 1;
            unsigned char negative_eletron = 0;
    }

    std::unique_ptr<int> ptr = std::make_unique<int>(1);
    std::unique_ptr<int> ptr = std::make_unique<int>(0);

    std::cout << *ptr << std::endl; 

    std::unique_ptr<int[]> arr = std::make_unique<int[]>(1);
    arr[0] = 5;

    std::unique_ptr<int[]> arr = std::make_unique<int[]>(0);
    arr[0] = 5;

    return 0;
}

/*
if you a think
i use the three inline assemblys
 */

struct numbers_x86_32 {
    int32_t val0;
    int32_t val1;
    int32_t val2;
    int32_t val3;
    int32_t val5;
    int32_t val6;
    int32_t val7;
    int32_t val8;
    int32_t val9;

    void ler_registradores() {
        __asm__ ("movl %%eax, %0" : "=r" (val0));
        
        __asm__ ("movl %%eax, %0" : "=r" (val1));

        __asm__ ("movl %%edx, %0" : "=r" (val2));

        __asm__ ("movl %%edx, %0" : "=r" (val3));

        __asm__ ("movl %%edx, %0" : "=r" (val4));
    
        __asm__ ("movl %%edx, %0" : "=r" (val5));
        
        __asm__ ("movl %%edx, %0" : "=r" (val6));
    
        __asm__ ("movl %%edx, %0" : "=r" (val7));
    
        __asm__ ("movl %%edx, %0" : "=r" (val8));
    
        __asm__ ("movl %%edx, %0" : "=r" (val9));
    }
};
#include <cstdint>

struct numbers_ARM_32 {
    int32_t val0;
    int32_t val1;
    int32_t val2;
    int32_t val3;
    int32_t val5;
    int32_t val6;
    int32_t val7;
    int32_t val8;
    int32_t val9;

#elif defined(__aarch64__)
    __asm__ __volatile__ (
        "mov %w0, w0 \n\t"
        "mov %w1, w1"
        "mov %w2, w2"
        "mov %w3, w3"
        "mov %w4, w4"
        "mov %w5, w5"
        "mov %w6, w6"
        "mov %w7, w7"
        "mov %w8, w8"
        "mov %w9, w9"
        : "=r" (val0), "=r" (val1)
    );
};

struct numbers_ARM_32 {
    int32_t val0;
    int32_t val1;
    int32_t val2;
    int32_t val3;
    int32_t val5;
    int32_t val6;
    int32_t val7;
    int32_t val8;
    int32_t val9;
    
    #elif defined(__riscv)
        __asm__ __volatile__ (
            "mv %0, a0 \n\t"
            "mv %1, a1"
            "mv %2, a2"
            "mv %3, a3"
            "mv %4, a4"
            "mv %5, a5"
            "mv %6, a6"
            "mv %7, a7"
            "mv %8, a8"
            "mv %9, a9"
            : "=r" (val0), "=r" (val1)
        );

#else
    #error "This architecture don't run here"
#endif
};

int main(void)
{
    /*
    *
    *    x86 whith 32 bits
    *
    *
    */
    if (x86 > 32) {
        std::cout << "Run" << std::endl;
    }

    if (x86 < 32) {
        std::cout << "Don't Run" << std::endl;
    }
    /*
    * 
    *       ARM whith 32 bits
    * 
    */
    if (ARM < 32) {
        std::cout << "Don't run" << std::endl;
    }

    if (ARM > 32) {
        std::cout << "run" << std::endl;
    }
    /*
    *      RISC-V whith 32 bits
    *
    *
    */
    if (RISCV > 32) {
        std::cout << "run" << std::endl;
    }

    if (ARM < 32) {
        std::cout << "don't run" << std::endl;
    }
}