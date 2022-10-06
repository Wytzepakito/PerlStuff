#!/usr/bin/perl

use 5.18.0;
use warnings;
use Cwd qw( abs_path );
use File::Basename qw( dirname );
use lib dirname(abs_path($0));
use Exercises::TranscribingDNA;
use Exercises::ComplementingDNAStrand;
use Exercises::ComputingGCContent;
use Exercises::CountingPointMutations;
use Path::Class;
use IO::File;



my $solver = Exercises::CountingPointMutations->new( "data\\rosalind_hamm.txt");



$solver->solve();



