#!/usr/bin/perl

use 5.18.0;
use warnings;

use constant {
    PI => 3.141592653589793238462643383279,
    TRUE => 1,
    FALSE => "",
};

sub PI {
    3.141592653589793238462643383279
}


say PI;

if (TRUE) {
    say "true";
} else {
    say "false";
}