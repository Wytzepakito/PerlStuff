#!/usr/bin/perl

use 5.18.0;
use warnings;

my $string = "This STRING has a bunch of useful characters in it.\n";


say scalar reverse($string);

say $string;


say reverse(1, 2, 3, 4, 5, 6);


say lc $string;

say uc $string;



