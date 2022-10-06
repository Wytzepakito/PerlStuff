#!/usr/bin/perl

use 5.18.0;
use warnings;

my $x = "three";
my @array = qw( one two three four five );


my $count = 0;
while (@array[$count]) {
    say "$count: @array[$count]";
    ++$count;
} 

# same as:

my $count = 0;
while (@array[$count]) {
    say "$count: @array[$count]";
} continue {
    ++$count;
}

for (my $count = 0; $array[$count]; ++$count ) {
    say "$count: $array[$count]";
}