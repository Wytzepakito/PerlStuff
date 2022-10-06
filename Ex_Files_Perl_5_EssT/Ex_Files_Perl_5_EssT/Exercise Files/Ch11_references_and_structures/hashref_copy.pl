#/usr/bin/perl

use 5.18.0;
use warnings;




my $ref = {
    one => "uno",
    two => "dos",
    three => "tres",
    four => "four",
    five => "cinco",
};


foreach my $k ( sort keys %{$ref} ) {
    say "$k : $ref->{$k}";
}