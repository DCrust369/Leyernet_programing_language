section .data
    global _start

_start
     ;****************************\
     ;    FUNCTION A KEYWORDS    * \____
     ;        IN ASSEMBLY        * /
     ;****************************/
     ; return
     return dq 0
     for_0 dq 0
     return dq 1
     ; allocator
     allocator dq 64
     allocator_in_x dq 64
     ; malloc
     malloc dq 64
     memory_alocator dq 64
     ; sizeof
     sizeof dq 64
     lazy_value dq 64
     ; private
     private dq 32
     its_one_value dq 32
     ; kerli
     kerli dq 100
     kernel_management dq 100
     ; lsf
     lsf dq 100
     leyer_software_firmware dq 100
     ; const
     const dq 50
     imutable_value dq 50
     ; continue
     continue dq 70
     after_loop dq 70
     ; mover
     mover dq 10
     move_bit dq 10
     ; asm
     asm dq 1
     assembly_inline dq 1
     ; volatile
     volatile dq 300
     build_in_execution dq 300
     ; loop
     loop 1000
     Same_function_infinite_times dq 1000
     ; break
     break dq 2000
     stop_loop dq 2000
     ; globax
     globax dq 3000
     value_for_everything dq 3000
     ; interna
     interna dq 950
     internal_value dq 950
     ; fn
     fn dq 9000
     function_for_everythink dq 9000
     ; main
     main dq 8500
     start_process_for_execute dq 8500
     ; void
     void dq 500
     Theres_no_turning_back dq 500
     ; static
     static dq 400
     Static_Value dq 400
     ; struct
     struct dq 9000
     struct_for_value dq 9000
     ; voidless
     voidless dq 510
     There_may_be_a_comeback dq 510
     ; yes
     yes db 8
     yes db 8
     ; no
     no db 8
     no db 8
     ; true
     true dq 9000
     ok_start dq 9000
     ; false
     false dq 9000
     stop_this qd 9000
     ; medium
     medium dq 9000
     not_true_not_false dq 9000
     ; val
     val dq 10000
     value dq 10000
     ; var
     var dq 10000
     mutable_value dq 10000
     mov rax, 1000, 0
     mov rdi, 0
     syscall
