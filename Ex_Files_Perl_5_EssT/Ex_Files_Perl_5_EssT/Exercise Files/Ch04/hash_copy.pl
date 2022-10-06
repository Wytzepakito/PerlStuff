#!/usr/bin/perl

use 5.18.0;
use warnings;

my %hash = ( one => "uno", two => "dos", three => "tres", four => "quatro", five => "cinco", "more key" => "very good");

$hash{six} = "seis";

while( my ($k, $v) = each %hash) {
    say "$k -> $v";
}


foreach my $k ( sort(keys %hash) ) {
    my $v = $hash{$k};
    say "$k -> $v";
}