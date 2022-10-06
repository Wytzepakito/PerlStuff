#!/usr/bin/perl


use 5.18.0;
use warnings;

my @array = qw( one two three four five six seven eight nine ten );

say foreach @array[0..5];