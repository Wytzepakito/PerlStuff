#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is (a line) of text";

if ( my @a =  $s =~ /(\(.*\))/g ) {
    say "Match is";
    say foreach @a
}  else {
    say "False";
}