: heap(creat == allocator)

    variable memory = allocator
    /*
    ok in my language
    i gonna creat a
    one allocator
    is not malloc or allocator
    is a 
    Locker
    is a allocator for my language 
    */
    variable allocator = Locker \ inspired by LockBit

: Locker( memory == input)
    undefined = NoLocker
    defined = YesLocker
    MEMORY_REGISTER = Locker

\ : ASSEMBLY(REGISTER == LOCKER)
CODE DUPLICATE ( n -- n n )
    mov ax, 100, [bx], \ the memory is allocated
    sub ax, -100, [bx], \ and now is a free
END-CODE
    
code SOM-ARM64 ( -- n )
    sub x22 , x22 , #8
    
    str x23 , [ x22 ]
    
    mov x23 , #-100
    
    next ,
end-code

: free_memory ( 100 -- -100)
    freedom = memory
    variable memory = INTEL_ME_RING

    \ you use a allocator is a Locker
    \ 
    \ and free the memory whith freedom
    \ 
    \ and continue the program
    \ 
;