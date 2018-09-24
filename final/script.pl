use strict;
use warnings;
my $filename;
my $str;
for (my $i=1;$i<=8;$i=$i*2){
  for(my $j=8;$j<=256;$j=$j*2){
    $str = `./sim $j $i 0 0 0 0 0 ./traces/val_perl_trace_mem.txt`; 
    $filename = "perl_result_N_"."$i"."_S"."$j";
    open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
    print $fh "$str";
    close $fh;
    print "DONE\n";
    #print "Done for:"."m=".$i." "."n=".$j."\n";
  }
}

