#!/usr/bin/perl

package Exercises::ComputingGCContent;
use 5.18.0;
use warnings;

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

sub print_result{
    my $self = shift;
    my $highest_key = "";
    my $highest_val = 0;
    my $hash = $self->{_hash};

    foreach my $key (keys %{$self->{_hash}} ){
        
        my $value = $hash->{$key};

        print("key is: $key \n");
        print("value  is: $value \n");
        if ($value > $highest_val) {
            $highest_key = $key;
            $highest_val = $value;

         }
     }



    print("$highest_key \n");
    my $highest_perc = $highest_val * 100;
    print("$highest_perc \n");

}

sub solve {
    my $self = shift;
    my %hash;
    my $key = "";
    my $GC_content = 0;
    my $seq_len = 0;

    while (my $line = $self->{_file_handle}->getline() ) {
        my $letter = substr($line, 0, 1);

        if ($letter eq '>'){
            if ($key ne "") {
                $hash{$key} = $GC_content / $seq_len;

                $GC_content = 0;
                $seq_len = 0;
            }
           $key = substr($line, 1);
           chop($key);
        } else {
            foreach my$char (split("", $line)) {
                if ($char eq "G" | $char eq "C") {
                    $GC_content++;
                    
                } 
                if ( $char ne "\n") {
                    $seq_len = $seq_len + 1;
                }
           }; 
            

        }

    }
    $hash{$key} = $GC_content / $seq_len;


    $self->{_hash} = \%hash;

    $self->print_result();
}