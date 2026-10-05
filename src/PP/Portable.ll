define void fastly_portable_virt_ring_minus_two () {
    %namespaces = sub i8 10, 5 ; namespaces whithout abstractions
    %class = sub i8 10, 6 ; class whithout abstractions 
    %fn = sub i8 10, 9 ; functions whithout abstractions 
    %pri = sub i8 10, 7 ; private whithout abstractions 
    %pub = sub i8 10, 8 ; public whithout abstractions
    
    ret i8 %fn
}