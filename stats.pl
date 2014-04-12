#!perl

use strict;
use warnings;
use diagnostics;

use Win32::Console;
my $CONSOLE = Win32::Console->new(STD_OUTPUT_HANDLE);
$CONSOLE->Cls($BG_BLUE);

my @numbers = ();
my $count = 0;
my $total = 0;
my $big_num = 0;
my $small_num = 0;
my $input = '';
my $average = 0;
my $median = 0;
my $done = 'false';
my $been_here = 'false';
my $middle = 0;

while ($done eq 'false'){
     print 'Enter an integer: ';
     chomp($input = <STDIN>);
     if ($input !~ /\D/ & $input ne ''){
         push @numbers, $input;
         if ($been_here eq 'false'){
             $big_num = $small_num = $input;
             $been_here = 'true';
         } else {
             $big_num = $input if $input > $big_num;
             $small_num = $input if $input < $small_num;
         } #-> else above
     } else{ $done = 'true'; }
} 
@numbers = sort { $a <=> $b } @numbers;
$count = @numbers;

foreach my $item (@numbers){
    print "$item\n";
    $total += $item;
}

$average = $total/$count;
if ($count % 2 != 0){
    $median = @numbers[int $count/2];   
} else{
    $middle = int $count/2; # -> this gives us the upper index 0f the two medians
    $median = (@numbers[$middle] + @numbers[$middle - 1])/2;
  }
  
my $out = sprintf("\n\n");
$out = $out . sprintf("Numbers:  %d\n", $count);
$out = $out . sprintf("Smallest: %d\n", $small_num);
$out = $out . sprintf("Largest:  %d\n", $big_num);
$out = $out . sprintf("Total:    %d\n", $total);
$out = $out . sprintf("Average:  %.2f\n", $average);
$out = $out . sprintf("Median:   %.2f\n\n", $median);
print $out;

