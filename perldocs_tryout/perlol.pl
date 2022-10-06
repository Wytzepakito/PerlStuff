#/usr/bin/perl
use 5.18.0;
use warnings;




# my @AoA = ( 
#     [ "fred", "barney", "pebbles", "bambam", "dino", ],
#     [ "george", "jane", "elroy", "judy", ],
#     [ "homer", "bart", "marge", "maggie" ],
# );

# print($AoA[2][1] . "\n");



# my $ref_to_AoA = [
#     [ "fred", "barney", "pebbles", "bambam", "dino", ],
#     [ "george", "jane", "elroy", "judy", ],
#     [ "homer", "bart", "marge", "maggie" ],
# ];

# print($ref_to_AoA->[2][1] . "\n");

# my (@AoA, $i, $line);
# for $i ( 0 .. 10 ) {
#     $line = <>;
#     $AoA[$i] = [ split " ", $line ];
# }


# for my $aref ( @AoA ) {
#     print "\t [ @$aref ],\n";
# }


my (@AoA, $x, $y, $i, $aref, $j);
for $x (1 .. 10) {
    for $y (1 .. 10) {
        $AoA[$x][$y] =  $y;
    }
}

for $i ( 0 .. $#AoA ) {
    for $j ( 0 .. $#{$AoA[$i]} ) {
        say "elt $i $j is $AoA[$i][$j]";
    }
}

for $x ( 3, 7, 9 ) {
    $AoA[$x][20] += $x;
}

# for $i ( 0 .. $#AoA ) {
#     for $j ( 0 .. $#{$AoA[$i]} ) {
#         say "elt $i $j is $AoA[$i][$j]";
#     }
# }




# for my $aref ( @AoA ) {
#     print  "\t [ @$aref ],\n";
# }


my $prettily;
sub show(+) {
    require Dumpvalue;
    state $prettily = new Dumpvalue::
                            tick => q("),
                            compactDump => 1, # comment these two lines
                                              # out
                            veryCompact => 1, # If you want a bigger 
                                              # dump
                                               ;
    dumpValue $prettily @_;
}

# my @AoA = (
#         ["fred", "barney"],
#         ["george", "jane", "elroy"],
#         ["homer", "marge", "bart"],
# );

# push $AoA[0]->@*, "wilma", "betty";
# show @AoA;



my (@part, $x);
@part = ();
$x = 4;
for ($y = 7; $y < 13; $y++) {
    push @part, $AoA[$x][$y];
}

print @part, "\n";

# Could've also been:

@part = $AoA[4]->@[ 7..12 ];

print @part, "\n";



my (@newAoA, $startx, $starty);

@newAoA = ();
for ($startx = $x = 4; $x <= 8; $x++) {
    for ($starty = $y = 7; $y <= 12; $y ++) {
        $newAoA[$x - $startx][$y - $starty] = $AoA[$x][$y];
    }
}

show @newAoA;

@newAoA = map { [ $AoA[$_]->@[ 7..12] ] } 4 .. 8;

show @newAoA;