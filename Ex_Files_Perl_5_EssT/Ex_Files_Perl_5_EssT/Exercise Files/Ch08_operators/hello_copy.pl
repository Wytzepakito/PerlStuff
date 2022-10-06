#!/usr/bin/perl

use 5.18.0;
use warnings;

say q(Hello,\n"World!");
say qq(Hello,\n"World!");


say qq|Hello,\n"World!"|;

my @array = qw( This is a list of words );

say foreach @array;


