#!perl

use strict;
use warnings;
use diagnostics;
our $counter = 4;

my %persons;

my %person = (first_name => 'Tim', 
	          last_name => 'Mulherin', 
	          email => 'tmulher@bu.edu', 
	          work_phone => '(617) 358-0032', 
	          cell_phone => '(978) 618-7324');
	      
$persons{'033427640'} = %person;

%person = (first_name => 'Diane', 
           last_name => 'Mulherin', 
           email => 'dmmulherin@gmail.com', 
           work_phone => '(978) 562-3546', 
           cell_phone => '(978) 618-7318');

#$persons{'018540667'} = %person;



 #for (keys %persons)
 {
#  print $_;
#   my %temp = $persons{$_};
 }
 
   #   print "key: $_ value: $persons{$_}\n"; 
#print "Enter something...\n ";
#my $input = <STDIN>;
#print "input was \"$input\"";
