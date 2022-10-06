#!/usr/bin/perl

use 5.18.0;
use warnings;

my @ array = qw( one two three four five );

say shift @array while @array;