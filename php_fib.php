<?php

$cache = array();

function fib($at) {
    if ($at == 0 || $at == 1) {
        return $at;
    } else if (isset($cache[$at])) {
        return $cache[$at];
    } else {
        $val = fib($at - 1) + fib($at - 2);
        $cache[$at] = $val;
        return $val;
    }
}

echo fib(33) . "\n";
