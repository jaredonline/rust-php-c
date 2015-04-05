<?php

function fib($at) {
    if ($at == 0 || $at == 1) {
        return $at;
    } else {
        $total  = 1;
        $parent = 1;
        $gp     = 0;

        for ($i = 1; $i < $at; $i++) {
            $total  = $parent + $gp;
            $gp     = $parent;
            $parent = $total;
        }

        return $total;
    }
}

for ($i = 0; $i < 100000; $i ++) {
    fib(92);
}
