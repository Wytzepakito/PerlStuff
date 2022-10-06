#!/usr/bin/perl

use 5.18.0;
use warnings;

func1("one", "two", "three");

func1("ont", "twt", "thret");

sub func1 {
    say "this is func1";
    my $a = shift;
    my $b = shift;
    my $c = shift;
    say "$a $b $c";
}