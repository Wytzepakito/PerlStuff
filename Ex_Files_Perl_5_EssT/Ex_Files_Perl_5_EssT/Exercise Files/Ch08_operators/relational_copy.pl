#!/usr/bin/perl

use 5.18.0;
use warnings;

use constant { TRUE => 1, FALSE => "" };

my $a = 7;
my $b = 42;
my $c = 7;
my $d = 42;

my $x = $a || 57;
say $x;

if ( $a == $c and $b == $d ) {
    say "true";
}   else {
    say "false";
}