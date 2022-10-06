#!/usr/bin/perl

use 5.18.0;
use warnings;
use Cwd qw( abs_path );
use File::Basename qw( dirname );
use lib dirname(abs_path($0));
use BW::Simple;

my $o = BW::Simple->new();
my $x = $o->number;
my $y = $o->string;

say "Hello, World! The number is $x";

say $y;
