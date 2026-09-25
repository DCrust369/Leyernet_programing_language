buffer (buffer --- 10)
    10 10 *

buffer_overflow IF
    10 10 *
    \ the buffer is a 10 but 10kg * 10kg in one think whith a 10kg is overflow
    ELSE
        ."Iferr: error, error, error"
    THEN

    CODE clear-overflow
        MOV EAX SUB 10, 5
    END-CODE

    CODE clear-overflow
        MOV r0, #10
        SUB r0, r0, #5
        BX  lr
    END-CODE 

buffer IF
    5 5 *

    ELSE 
        ."Iferr: ERROR, ERROR, ERROR"
    THEN 

    CODE clear-overflow
        MOV EAX SUB 5, 5
    END-CODE

    CODE clear-overflow-ARM
        MOV r7 #5, #5
        SUB r0, r0, #5
    END-CODE

    \ You addiction the 10 * 10 = 10.000 in the buffer whith a 10 it's a DDOS of the overflows
    \ and the iferr help You
    \  if (5 < 10) {
    \     return iferr;
    \ }
