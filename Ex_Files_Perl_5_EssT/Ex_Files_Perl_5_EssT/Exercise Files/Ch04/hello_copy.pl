#!/usr/bin/perl
# hello.pl

use 5.18.0;
use warnings;

my $s = "Hello, World!";
$s = qq(This is a string. "${s}" This is another string.);
say "s is [$s]";