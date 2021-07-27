#![no_std]
#![feature(llvm_asm)]

//Reset handler
#[no_mangle]
pub unsafe extern "C" fn Reset() -> ! {
    let _x = 42;

    loop{}
}

//Reset vector, points to reset handler
#[link_section = ".vector_table.reset_vector"]
#[no_mangle]
pub static RESET_VECTOR: unsafe extern "C" fn () -> ! = Reset;

