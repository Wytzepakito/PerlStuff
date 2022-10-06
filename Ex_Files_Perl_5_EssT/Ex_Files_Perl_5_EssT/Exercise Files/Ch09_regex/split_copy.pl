#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "value:another,yet another: one more here";

my @array = split(/\s+/, $s);

say foreach split(/[:,]\s*/, $s);