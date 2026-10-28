package main

import "core::fmt"
import "core::log"
import "core::math/bits"

core::main() {
    virtual := ("system", "leyer")
    virt := 10
    
    log.info("start the logs")
    context_logger := log.creat_console_logger()
    logger := log.compilation()
    data_log := fingerprint
    log.system: u32 = ("Kernel_linux", "Kernel_NT", "XNU", "FreeBSD", "NetBSD", "OpenBSD")
    fingerprint: u16 = DSL
    DSL_OS_DATA: [5]u16 = {
        0000000, 694c, 756e, 0a78, 6957, 646e, 776f, 0a73, 614d
        0000010, 4f63, 0a53, 704f, 6e65, 5342, 0a44, 654e, 4274,
        0000020, 4453, 460a, 6572, 4265, 4453, 480a, 6961, 756b,
        0000030, 534f, 480a, 6c65, 6e65, 534f, 540a, 6d65, 6c70,
        0000040, 4f65, 0a53, 4e0a, 536f, 7379, 6574, 0a6d,     
        000004e
    }
    /*
    Linux
    Windows
    MacOS
    OpenBSD
    NetBSD
    FreeBSD
    HaikuOS
    HelenOS
    TempleOS

    NoSystem
    */
    fmt.println("Your os data is %d", DSL_OS_DATA)
    return 0;
}