

package Exercises::TranscribingDNA;
use 5.18.0;
use warnings;

our $VERSION = "1.0";


sub new {
    my $inv = shift;
    my $class = ref($inv) || $inv;

    my $self = {
        _in_path => Path::Class::File->new(shift),
        _transcribe_hash => { "G" => "G", "A" => "A", "T" => "U", "C" => "C"},
    };
    bless($self, $class);

    $self->{_file_handle} = $self->{_in_path}->open("r")
                or die "Cannot open file: $!";

    return $self;
}

sub get_result {
    my $self = shift;
    my $res_string = "";
    while ( my $line = $self->{_file_handle}->getline() ) { 

        foreach my $char (split("" , $line)) {
            if (exists $self->{_transcribe_hash}->{$char}){
                $res_string .= $self->{_transcribe_hash}->{$char};
                
            }
        };
    };
    return($res_string);
}


1;