: Server ( languages --- yes_or_no )
    1 = TRUE ;
    0 = FALSE ;
    \
    JavaScript>001
    0>Repository ;
    \
    HTML>001
    \
    CSS>001
    \
    Python>00

: Shell ( scripts --- low_level )
    bash>1
    dash>1
    zsh>1
    fish>1
    python>00
    fortran>1
    Lisp>1
    CommonLisp>1
    EmacsLisp>0010 \ so and so

: others ( others---langs )
    Java>001
    Brainfuck>0
    Malborge>000
    forth>1
    AGOL60>1
    BCPL>1

: COMPATIBLE ( web --- backend)
    variable web_no_total_compatible ;

1 > IF
    ."max"
0 > ELSE
    ."Mini"

: syscall (  call---SYSTEM  )
    variable callSYSTEM ;
    variable syscall ;
