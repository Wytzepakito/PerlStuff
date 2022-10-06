#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is a line of text";

if ( $s=~ /(..is).*(..ne).(..)/ ) {
    say "match 1 is: $1";
    say "match 2 is : $2";
    say "match 3 is: $3";
}   else {
    say "No match.";
}