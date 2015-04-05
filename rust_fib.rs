#![crate_type = "staticlib"]

fn fib(at: usize) -> usize {
    if at == 0 {
        return 0;
    } else if at == 1 {
        return 1;
    } 

    let mut total  = 1;
    let mut parent = 1;
    let mut gp     = 0;
    for _ in 1 .. at {
        total  = parent + gp;
        gp     = parent;
        parent = total;
    }
    
    return total;
}

#[no_mangle]
pub extern "C" fn rust_fib(at: usize) -> usize {
    fib(at)
}
