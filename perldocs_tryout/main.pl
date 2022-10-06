#!/usr/bin/perl

use 5.18.0;
use warnings;

my %HoA;

# reading from file; more temps
# flintstones: fred barney wilma dino
while ( my $line = <> ) {
    my ($who, $rest) = split /:\s*/, $line, 2;
    my @fields = split ' ', $rest;
    $HoA{$who} = [ @fields ];
}




# print the whole thing
foreach my $family ( sort keys %HoA ) {
    print("$family: { ");
    foreach my $i ( 0 .. $HoA{$family}->$#* ) {
        print(" $i = $HoA{$family}[$i]");
    }
    print("\n")
}



