#!/usr/bin/perl

use 5.18.0;
use warnings;

my $filename = "testfile.txt";

if (-d $filename) {
    say "file test returned true";
} elsif($!) {
    say $!;
} else {
    say "file test returned false";
}