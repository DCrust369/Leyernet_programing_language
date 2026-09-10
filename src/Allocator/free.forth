: FREEDOM( memory --- allocate )
    variable  freedom = memory
    ALLOC freedom
    FREE freedom

: IWBF( memory --- buffer )
    variable IWBF = i_want_to_break_free /* isn't a reference */
    ALLOC IWBF 
    FREE IWBF

: FREEALLO( free --- allocator)
    variable FREEALLOC = FREE_ALLOCATOR
    ALLOC FREEALLOC 
    FREE FREEALLOC 
