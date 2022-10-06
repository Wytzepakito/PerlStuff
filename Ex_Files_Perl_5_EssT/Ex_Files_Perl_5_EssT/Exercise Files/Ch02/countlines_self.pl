#! usr/bin/perl

use 5.18.0;
use warnings;

# use a scalar variable for the name of the file
my $filename = "linesfile.txt";

open(FH, $filename);
my @lines = <FH>;
close(FH);


my $count = scalar @lines;
say "There are $count lines in $filename";