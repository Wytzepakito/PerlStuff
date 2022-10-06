#!/usr/bin/perl

use 5.18.0;
use warnings;

my $x;

$x  = 42;
$x = undef;

if (defined $x) {
    say "x is $x";
}   else {
    say "x is not defined";
}