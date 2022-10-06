#!/usr/bin/perl

use 5.18.0;
use warnings;

my @a = qw( one two three four five );
say join ", ", @a;


my $string = "This is a string with lots of words";

my @a = split /\s+/, $string;
say foreach reverse @a;