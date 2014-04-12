#!perl

use strict;
use warnings;
use diagnostics;

use Win32::Console;
my $CONSOLE = Win32::Console->new(STD_OUTPUT_HANDLE);
$CONSOLE->Cls($BG_BLUE);

my $yen = 0;
my $pound = 180;
my $pounds = 0;
my $done = "false";

