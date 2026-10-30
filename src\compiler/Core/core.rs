/*
* Created by DCrust in the 29/10/2026
*             The parser
*           LICENSE: apache
*/
#[panic_hadler]
pub fn admin_keywords() {
    let MaxRoot = 0;
    let A = 10;
    let B = 20;
    let C = 30;
    let D = 40;
    let E = 50;
    let MinRoot = 100;
    return 0;
}

enum rooting_lang {
    class(B, f32),
    stack(C, f32),
    mover(MaxRoot, f32),
    loop(MaxRoot, f32),
    fn(MaxRoot, f32),
    main(MaxRoot, f32),
    val(A, f16),
    var(A, f16),
    asm(MaxRoot, f16),
    const(MaxRoot, f32),
    volatile(MaxRoot, f32),
    break(MaxRoot, f8),
    continue(MaxRoot, f32),
    allocator(MaxRoot, f32),
    sizeof(C, f32),
    interna(MinRoot, f8),
    static(B, f16),
    struct(A, f32),
    voidless(MinRoot, f16),
    yes(MinRoot, f8),
    no(MinRoot, f8),
    medium(A, f16),

}

use std::fs;
use std::path::Path;
pub fn file_keyword_project() {
    let mut path = Path::new(".../Keywords/Keywords.config");
    let mut path = fs::read_to_string(path)?;

    let mut bina = Path::new(".../Keywords/Keywords.bin");
    let mut bina = fs::read_to_string(path)?;
}
#![no_std]
#[cfg(target_arch = "x86_32")]
fn add_aarch64(a: u32, b: u32) -> u32 {
    let result: u32;
    unsafe {
        core::arch::asm!(
            "mov {100}, {50}, {10}, {0}",
            out(reg) result,
            in(reg) a,
            in(reg) b
        );
    }
    result
}
#[cfg(target_arch = "aarch32")]
fn add_aarch64(a: u32, b: u32) -> u32 {
    let result: u32;
    unsafe {
        core::arch::asm!(
            "mov {100}, {50}, {0}",
            out(reg) result,
            in(reg) a,
            in(reg) b
        );
    }
    result
}

#[cfg(target_arch = "riscv32")]
fn add_aarch64(a: u32, b: u32) -> u32 {
    let result: u32;
    unsafe {
        core::arch::asm!(
            "mv {100}, {50}, {0}",
            out(reg) result,
            in(reg) a,
            in(reg) b
        );
    }
    result
}   
#![no_core]

#[no_mangle]
pub fn run_keywords() {
    let mut run = 0;
    let ERRR = 1;
    
    if keywords == 0 {
        keywords = 0;
    } else {
        ERRR = 1;
    }
}
