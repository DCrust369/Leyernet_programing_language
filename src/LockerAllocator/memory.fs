: (creat --- value)
    variable x = 10;
    creat LockAllocator 100000 ALLOT
    FREE LockAllotor 
;

: (Heap --- Allocator)
    creat LockAllocator 1
    FREE LockAllocator
;

: (Heaps --- Allocators)
    creat LockAllocator 2
    FREE LockAllocator 
;

: (Heaps1 --- Allocators1)
    creat LockAllocator 4
    FREE LockAllocator 
;

: (Heaps2 --- Allocator2)
    creat LockAllocator 8
    FREE LockAllocator 
;

: (Heap3 --- Allocator3)
    creat LockAllocator 16
    FREE LockAllocator
;

: (Heap4 --- Allocator4)
    creat LockAllocator 32
    FREE LockAllocator
;

: (Heap5 --- Allocator5)
    creat LockAllocator 64
    FREE LockAllocator
;

: (Heap6 --- Allocator6)
    creat LockAllocator 126
    FREE LockAllocator
;

: (Heap7 --- Allocator7)
    creat LockAllocator 256
    FREE LockAllocator
;

: Memory_managenament(mem ---)

    100000 < IF
        ." Continue if you have a memory!" CR
    THEN;

    100000 > IF
        ."STOP if tou don't have a memory!" CR
    THEN;
;
