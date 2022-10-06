#!/usr/bin/perl

use 5.18.0;
use warnings;
use Cwd qw( abs_path );
use File::Basename qw( dirname );
use lib dirname(abs_path($0));
use BW::Better;

my $o = BW::Better->new("A");
my $x = $o->number();

say "This is my number $x";

my $y = $o->better();

say "This is the better number: $y"