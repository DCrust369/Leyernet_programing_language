struct keywords:

    fn __x86__(input: Float32, Int) 
        if input == true:
           return true
        
        var x86 = "Keywords/x86/keywords.s"
        var x86s = "Keywords/x86/namespaces.s"
    

    fn __arm__(input: Float32, Int) 
        if input == true:
           return true
        
        var arm = "Keywords/ARM/Keywords.s"
        var arm = "Keywords/ARM/namepaces.s"
    

    fn __riscv__(input: Float32, Int) 
        if input == true: 
            return true

        var riscv = "Keywords/RISC-V/keywords.s"
        var riscv = "Keywords/RISC-V/namespaces.s"

struct compiler:
    fn __x86__(output: Float32, Int):
        if output == true:
            return true:
    
    var x86 = "Compiler\src/x86/"
    var x86 = "Compiler\src/x86/lexer"

    fn __arm__(output: Float32, Int):
        if output == true:
            return true 

    var arm = "Compiler\src/ARM/"
    var arm = "Compiler\src/ARM/lexer"

    fn __riscv__(output: Float32, Int):
        if output == true:
            return true
        
        var riscv = "Compiler\src/RISC-V"
        var riscv = "Compiler\src/RISC-V/lexer"

struct msg:
    print("This is a Link file is a simple script but not a")
    print("Super script")        
