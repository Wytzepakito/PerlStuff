#!/usr/bin/perl


use 5.18.0;
use warnings;
use subs qw( errorexit );

my $condition = 0;

if ($condition) {
    say "Conditions is true.";
}  else {
    errorexit "Condition is false.\n";
}

say "After conditional.";


sub errorexit {
    my $m = shift || "Errror message goes here.";
    say STDERR "I've got a bad feeling about this: $m";
    exit;
}