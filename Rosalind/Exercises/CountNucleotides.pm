

package Exercises::CountNucleotides;
use 5.18.0;
use warnings;

our $VERSION = "1.0";


sub new {
    my $inv = shift;
    my $class = ref($inv) || $inv;

    my $self = {
        _in_path => Path::Class::File->new(shift),
        _nuc_order => ["A", "C", "G", "T"],

    };
    bless($self, $class);



    $self->{_file_handle} = $self->{_in_path}->open("r") 
                or die "Cannot open file: $!";
    return $self;
}

sub get_result {
    my $self = shift;
    $self->solve();
    return($self->get_result_string());
}

sub solve {
    my $self = shift;
    my %hash = (A => 0, C => 0, G => 0, T => 0 );
    while ( my $line = $self->{_file_handle}->getline() ) { 

        foreach my $char (split("" , $line)) {
            if (exists $hash{$char}){
                ++$hash{$char};
            }
        }
    }
    $self->{_hash_result} = \%hash;
}

sub get_result_string {
    my $self = shift;
    my $res_string = "";
    foreach my $char ( @{$self->{_nuc_order}} ){

        $res_string .= $self->{_hash_result}->{$char} . " ";
    }
    return($res_string);

}






1;