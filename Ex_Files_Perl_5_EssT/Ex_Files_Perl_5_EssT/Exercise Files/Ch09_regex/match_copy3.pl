#!/usr/bin/perl

use 5.18.0;
use warnings;

my $s = "This is a line of text";


say foreach $s =~ /i(.)/g;