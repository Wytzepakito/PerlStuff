#!/usr/bin/perl

use 5.18.0;
use IO::File;

my $fn1 = "train-station.jpg";
my $fn2 = "copy.jpg";

my $file1 = IO::File->new("< $fn1") or die "Cannot open file: $!";
my $file2 = IO::File->new("> $fn2") or die "Cannot open output file: $!";

$file1->binmode;
$file2->binmode;

my $buffer;

while (my $len = $file1->read($buffer, 102400)){
    $file2->print($buffer);
    say $buffer;
}


say "Done.";