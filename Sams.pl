#!perl

use strict;
use warnings;
use diagnostics;

my $cookie = "";

while ($cookie !~ /cookie/i)
{
  print 'Give me a cookie: ';
  chomp ($cookie = <STDIN>);
}

print "Mmmmm. Cookie!\n"