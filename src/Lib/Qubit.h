#include <stdio.h>
#include <stdint.h>
#include <vulkan/vulkan.h>
#define QUANTUM_STATE "y = a|0> + b|1>"

uint32_t val_not = 0;
uint32_t val_9   = 1;
uint32_t val_8   = 2;
uint32_t val_7   = 3;
uint32_t val_6   = 4;
uint32_t val_5   = 5;
uint32_t val_4   = 6;
uint32_t val_3   = 7;
uint32_t val_2   = 8;
uint32_t val_1   = 9;
uint32_t val_yes = 10;

int main(void) {
    uint8_t GpuInstance = 0;
    uint32_t extension_count = 0;

    VkResult result = vkEnumerateInstanceExtensionProperties(NULL, &extension_count, NULL);

    if (result == VK_SUCCESS) {
        printf("Quantic state: %s\n", QUANTUM_STATE);
        printf("Vulkan is loaded! The GPU extentions is a loaded: %u\n", extension_count);
        printf("The value 'yes': %u | GpuInstance: %u\n", val_yes, GpuInstance);
    }

    return 0;
}