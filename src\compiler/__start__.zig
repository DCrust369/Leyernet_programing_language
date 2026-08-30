pub fn (main) !void {
    .const section[.data],
    .const __global_start,
    .const __start,
    asm {
        \\\\ mov %rax, %[0]
        \\\\ mov %rax, %[01]
        \\\\ mov %rax, %[001]
        \\\\ mov %rax, %[0001]
        \\\\ mov %rax, %[001]
        \\\\ mov %rax, %[01]
        \\\\ mov %rax, %[1]
        \\\\ start %dq %[1]
        \\\\ makefile %dq [01]
        \\\\ make %dq &[001]
        \\\\ bash %dq &[0001]
        \\\\ start %dq &[00001]
        \\\\ hexdump_minus_C %dq %[000001]
        \\\\ compiling__ %dq [1]
        \\\\ compiling__file_whiith_makefile_whith_bash %dq [010] // it's a 10
        \\\\ mov %rax, [1]
    }
    .const mov_rax_0,
    .const mov_rdi_1,
    .const syscall,
}
