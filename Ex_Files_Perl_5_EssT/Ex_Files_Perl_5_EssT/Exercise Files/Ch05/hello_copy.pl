#!/usr/bin/perl

use 5.18.0;
use warnings;

my $x = 1;
my $y = 2;
my $z = 3;

my $v = $x;

given ($v) {
    when ($x) { say "x"; }
    when ($y) { say "y"; }
    when ($z) { say "z"; }
    default { say "default"; }

}

given ($v) {
    say "x" when $x;
    say "y" when $y;
    say "z" when $z;
    default { say "default"; }

}

my %hash = ( $x => "x", $y => "y", $z => "z" );
if ( $hash{$v} ) {
    say $hash{$y};
} else {
    say "default";
}