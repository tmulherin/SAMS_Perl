#!perl

use strict;
use warnings;
use diagnostics;

use Win32::Console;
my $CONSOLE = Win32::Console->new(STD_OUTPUT_HANDLE);
$CONSOLE->Cls($BG_BLUE);

my %numbers = ();
my $count;
my $number;

srand;

for(my $i = 0; $i < 50; $i++){
        $number = int(rand 51);
        if (exists $numbers{$number}){
            $numbers{$number}++;
        } else {
            $numbers{$number} = 1;
        }
    }

my @keys = (keys %numbers);
@keys = sort { $a <=> $b } @keys;    
foreach my $key (@keys){
    $numbers{$key} = '*' x $numbers{$key};
    printf ("%2d| $numbers{$key}\n", $key);
}
