#!/usr/bin/perl

use 5.18.0;
use warnings;
use Carp;

func();

say "returned from function.";
 
sub func {
    confess "this is an error message.";
}