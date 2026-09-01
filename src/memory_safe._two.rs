#![no_core]
#![no_std]
#![no_main]

fn DOUBLE_FREE () {
    if (free == 1) {
        let ok: bool = true;
        return 0;
    }
    if (free == 2) {
        let panic!: bool false;
        return 1;
    }
    // this is for 
    let mut pointer = i;
    let mut i: bool = true;

    let mut pointer: type = "nothing";
    let mut "nothing": type = false;

    // exemple in C
    // int x = 10;
    // int y = 0;

    // int z = x / y;
    // this is a Undefined Behavior (UB)

    if (x == 10) {
        let mut panic!: type = 10 / 0;
        return 1;
    }
    let mut y = 0;
    if (x == 10) {
        let mut panic!: type = z / y;
        return 1;
    }
    let mut x = 10
    if (y == 5) {
        let mut math: type = z / y;
        return 0;
    }
}
