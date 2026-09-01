#![no_std]
#![no_main]
#![no_core]

fn MAX_POOL () {
    if (10 < 11) {
        let ok: bool = true;
        return 0; // if return 0 it's ok if don't return 0; it's not ok
    }
    if (11 < 10) {
        let panic! = NO_COMPILE; // if pass for 1 it's a buffer overflow if a buffer oerflow... no compile
        return 1; // if return 0; because it's a error
    }
}

fn NO_FREE () {
    if (free == false) {
        let panic! = NO_COMPILE;
        return 1;
    }
    if (free == true) {
        let ok: bool = true;
        return 0;
    }
}
