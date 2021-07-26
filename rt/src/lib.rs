#![no_std]
#![feature(llvm_asm)]

pub unsafe extern "C" fn Reset() -> ! {
    let _x = 42;

    loop{}
}

#[link_section = ".vector_table.reset_vector"]
#[no_mangle]
pub static RESET_VECTOR: unsafe extern "C" fn () -> ! = Reset;


