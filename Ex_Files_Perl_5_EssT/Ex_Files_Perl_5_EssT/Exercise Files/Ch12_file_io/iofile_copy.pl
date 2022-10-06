#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;

my $filename = "lines.txt";
my $outfile = "newfile.txt";

my $file1 = IO::File->new("< $filename") or die "Cannot open file: $!";
my $file2 = IO::File->new("> $outfile") or die "Cannot open outpur file: $!";

while ( my $line = $file1->getline() ) {
    $file2->print($line);
    say "I printed a line";
}


say "Done.";

