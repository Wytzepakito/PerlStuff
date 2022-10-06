#!/usr/bin/perl

use 5.18.0;
use warnings;
use Cwd qw( abs_path );
use File::Basename qw( dirname );
use lib dirname(abs_path($0));
use BW::Better;

my $o = BW::Better->new(47);
my $x = $o->number();


say "The value is $x";

say "A better number is: " . $o->better;

$o->number(183);
$x = $o->number();
say "The value is $x";

say "A better number is: " . $o->better;