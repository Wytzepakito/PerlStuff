#!/usr/bin/perl

use 5.18.0;
use warnings;
use feature "state";


func2();
func2();
func2();
func2();

sub func2() {
    state $n = 10;
    say ++$n; 
}

use subs qw( func );

func "foo", "bar", "shame";

sub func {
    say foreach @_;
}


say "Hello", "World";