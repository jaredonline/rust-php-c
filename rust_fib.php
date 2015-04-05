<?php
$br = (php_sapi_name() == "cli")? "":"<br>";

if(!extension_loaded('rust_fib')) {
	dl('rust_fib.' . PHP_SHLIB_SUFFIX);
}

for ($i = 0; $i < 100000; $i ++) {
    confirm_rust_fib_compiled(92);
}
?>
