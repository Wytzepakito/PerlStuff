#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is a LINE of text\nmore text\neven more text";

say foreach $s =~ /i/g;

if ($s =~ /
    ^m
    .*
    text
    $
    /mx ){
    say "True";
} else {
    say "False";
}

my $re = qr/line/;

say $s =~ $re ? "True" : "False";