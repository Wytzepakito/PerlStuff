#!/usr/bin/perl

use 5.18.0;
use warnings;



my $ref = sub { say "Hi! I'm an anonymous function!"};

$ref->();

my $ref2 = func();

$ref2->();

sub func {
    my $s = "This string is local to func.";
    return sub { say $s }
}