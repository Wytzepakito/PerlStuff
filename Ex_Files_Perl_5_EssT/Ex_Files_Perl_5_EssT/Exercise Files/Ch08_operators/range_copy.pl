#!/usr/bin/perl

use 5.18.0;
use warnings;


my $lower = "01";
my $upper = "31";


foreach my $i (0..9, "a".."f") {
    print "$i ";
}

my @array = ($lower.. $upper);

say foreach @array;

print "\n";