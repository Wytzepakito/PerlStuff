#!/usr/bin/perl


use 5.18.0;
use warnings;


# my $ref = [ qw( one two three four five ) ];
my $ref =  [ 1, 2, 3];
$ref->[0] = "one";
say foreach @{$ref};
# say foreach @{$ref};