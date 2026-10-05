; the PP is a Performance and portability
; The leyernet is writed in the assembly programing language
; but this have a problem. Portability but not performance 

define i16 @portable_stack () {
    entry:
    %subtraction = sub i16 8, 16 ; -8
    %addiction = add i16 -8, 8, 4 ; 4

    %ptr_int = alloca i8, aligin 1
    store i8 4, ptr %ptr_int, align 

    %val = load i8, ptr %ptr_int, align 1
    ; i  hate LLVM IR 
}
