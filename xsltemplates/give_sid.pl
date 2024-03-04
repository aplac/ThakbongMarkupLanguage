#!/usr/bin/perl -w
use strict;

my %seen;
open(I,"../tml.xml");
while (my $line=<I>) {
   chomp($line);
   if ($line=~m| entid="s(\d+)"|) {
       $seen{$1}=1;
   }
}
close(I);
my $i=20;
while($i) {
   $i++;
   if (!$seen{$i}) { 
      print "s$i\n";
      exit;
   }
}


