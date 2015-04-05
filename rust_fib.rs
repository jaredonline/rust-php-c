#![crate_type = "staticlib"]

use std::collections::HashMap;

struct Fib {
    cache: HashMap<i32, i64>
}

impl Fib {
    fn fib(&mut self, at: i32) -> i64 {
        if at == 0 {
            return 0;
        } else if at == 1 {
            return 1;
        } 
        
        let v = match self.cache.get(&at) {
            Some(val) => Some(val.clone()),
            None      => None
        };
        
        match v {
            Some(val) => return val,
            None      => {
                let val = self.fib(at - 1) + self.fib(at - 2);
                self.cache.insert(at, val);
                val
            }
        }
    }
}

#[no_mangle]
pub extern "C" fn rust_fib(at: i32) -> i64 {
    let mut fib = Fib {
        cache: HashMap::new()
    };

    fib.fib(at)
}
