#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is a line of text";

$s =~ s/^(\w+)\s+(\w+)\s+(\w+)\s+(\w+)\s+(\w+)/$4 $3 $2 $1/g;

say $s;


my $n = 1234567890;

while ( $n =~ s/^(-?\d+)(\d{3})/$1,$2/ ) {}
say $n