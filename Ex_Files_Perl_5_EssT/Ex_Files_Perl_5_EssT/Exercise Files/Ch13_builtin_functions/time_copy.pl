#!/usr/bin/perl

use 5.18.0;
use warnings;

my $t = time();

say $t;

my $timestring = localtime($t);
say $timestring;

my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($t);
$year += 1900;
$mon ++;

# add leading zeros to numeric for display
foreach ($mon, $mday, $hour, $min, $sec) {
    $_ = "0$_" if $_ < 10;
}

say "$year-$mon-$mday $hour:$min:$sec";

use POSIX qw( strftime );

my $now_string = strftime("%A, %B %d, %Y, %H:%M:%S", localtime($t));
say $now_string;