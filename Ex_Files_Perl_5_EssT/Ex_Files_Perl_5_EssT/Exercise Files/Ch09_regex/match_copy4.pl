#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is aaaaaa line of text";

if ( $s =~ /(a{3,})/ ) {
    say "match is: $1";
} else {
    say "False";
}