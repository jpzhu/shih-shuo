#!/usr/bin/perl
#printf "the parameter numbe is ".@ARGV."\n";

    if($ARGV[1]<10){
        printf ("echo '<br>[下一篇](%s_%d)'>>%s_%d.md\n",$ARGV[0],1,$ARGV[0],0);
    }
    elsif($ARGV[1]<100){
        printf ("echo '<br>[下一篇](%s_%02d)'>>%s_%02d.md\n",$ARGV[0],1,$ARGV[0],0);
    }
    else{
            printf ("echo '<br>[下一篇](%s_%03d)'>>%s_%03d.md\n",$ARGV[0],1,$ARGV[0],0);
    }

for($i=0 ; $i<$ARGV[1]-1; $i+=1){
    if($ARGV[1]<10){
        printf ("echo '<br>[上一篇](%s_%d) [回卷首](%s_%d) [下一篇](%s_%d)'>>%s_%d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+2,$ARGV[0],$i+1);
    }
    elsif($ARGV[1]<100){
        printf ("echo '<br>[上一篇](%s_%02d) [回卷首](%s_%02d) [下一篇](%s_%02d)'>>%s_%02d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+2,$ARGV[0],$i+1);
    }
    else{
            printf ("echo '<br>[上一篇](%s_%03d) [回卷首](%s_%03d) [下一篇](%s_%03d)'>>%s_%03d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+2,$ARGV[0],$i+1);
    }
}

if($ARGV[1]<10){
    printf ("echo '<br>[上一篇](%s_%d) [回卷首](%s_%d)' >>%s_%d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+1);
}
elsif($ARGV[1]<100){
    printf ("echo '<br>[上一篇](%s_%02d) [回卷首](%s_%02d)'>>%s_%02d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+1);
}
else{
    printf ("echo '<br>[上一篇](%s_%03d) [回卷首](%s_%03d)'>>%s_%03d.md\n",$ARGV[0],$i,$ARGV[0],0,$ARGV[0],$i+1);
}
