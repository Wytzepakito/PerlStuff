#!/usr/bin/perl

use 5.18.0;
use warnings;

# get environment variables
foreach my $k ( sort keys %ENV ) {
    say "$k = $ENV{$k}";
}

# get name of file
say $0;

say $^V;