#include <stdio.h>
#include "rust_fib.h"

int main(int argc, char *argv[]) {
    printf("%d\n", rust_fib(46));
    return 0;
}
