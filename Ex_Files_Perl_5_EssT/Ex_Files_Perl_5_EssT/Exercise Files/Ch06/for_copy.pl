#!/usr/bin/perl

use 5.18.0;
use warnings;

my @array = qw( one two three four five );

for ( my $i = 0; $array[$i]; ++$i ) {
    say $array[$i];
}