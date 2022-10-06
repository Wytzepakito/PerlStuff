package Exercises::ComplementingDNAStrand;
use 5.18.0;
use warnings;

our $VERSION = "1.0";


sub new {
    my $inv = shift;
    my $class = ref($inv) || $inv;

    my $self = {
        _type_input => shift,
        _input => shift,
        _complement_hash => { "G" => "C", "C" => "G", "A" => "T", "T" => "A" }
    };
    bless($self, $class);

    if ($self->{_type_input} eq "file"){
        $self->{_in_path} = Path::Class::File->new($self->{_input});

        $self->{_file_handle} = $self->{_in_path}->open("r") 
            or die "Cannot open file: $!";
    }

    return $self;
}


sub get_result {
    my $self = shift;
    my $res_string = "";
    if ($self->{_type_input} eq "text") {
        foreach my $char (split("", $self->{_input})) {
            if (exists $self->{_complement_hash}->{$char}){
                $res_string .= $self->{_complement_hash}->{$char};
            }
        }

    } elsif ($self->{_type_input} eq "file") {

        while ( my $line = $self->{_file_handle}->getline() ) {
            foreach my $char (split("", $line)) {
                if (exists $self->{_complement_hash}->{$char}) {
                    $res_string .= $self->{_complement_hash}->{$char};
                }
            }

        }
    }
    return(scalar reverse($res_string));
}


1;