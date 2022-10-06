#!/usr/bin/perl

package Exercises::CountingPointMutations;
use warnings;
use 5.18.0;


our $VERSION = "1.0";

sub new {
    my $inv = shift;
    my $class = ref($inv) || $inv;

    my $self = {
        _in_path => Path::Class::File->new(shift),
    };
    bless($self, $class);

    $self->{_file_handle} = $self->{_in_path}->open("r")
        or die "Cannot open file: $!";

    return $self;
}

sub solve {
    my $self = shift;
    my $distance = 0;

    my $first = $self->{_file_handle}->getline();
    $first =~ s/^\s+|\s+$//g ;
    my $second = $self->{_file_handle}->getline();
    $second =~ s/^\s+|\s+$//g;

    for (my $i = 0; $i < length($first); $i ++) {
        if (substr($first, $i, 1 ne "\n")) {
            if (substr($first, $i, 1) ne substr($second, $i, 1)) {
                $distance++;


            }
        }
    }
    print($distance);


}


