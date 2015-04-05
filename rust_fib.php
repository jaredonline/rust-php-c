<?php
$br = (php_sapi_name() == "cli")? "":"<br>";

if(!extension_loaded('rust_fib')) {
	dl('rust_fib.' . PHP_SHLIB_SUFFIX);
}
$str = confirm_rust_fib_compiled(33);
echo "$str\n";
?>
