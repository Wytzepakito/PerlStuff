#!/usr/bin/perl

use 5.18.0;
use warnings;

my $ref1 = [1, 2, 3, 4, 5];
my $ref2 = { one => 1, two => 2, three => 3, four => 4 };

display_ref($ref1);
display_ref($ref2);

sub display_ref {
    my $r = shift || "";
    if (ref($r) eq "ARRAY") {
        say "r is an array";
        say foreach @{$r};
    } elsif (ref($r) eq "HASH") {
        say "r is a hashmap";
        foreach my $k ( sort keys %{$r} ) {
            say "$k : $r->{$k}";
        }
    }
}