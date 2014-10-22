#!/bin/sh
#this bash script run awk command to pre-process the results from
#BORG end-run ( or runtime ) output, by removing the decision solutions and
#keeping the objective values, which is used for MOEA diagnostics 
#in this example, input file is named as, e.g. "end_run_1.txt", while the output 
#file will be named as, e.g. "end_run_noDV_1.txt"
#
#The command "awk" invokes the awk environment. The first part says that before 
#you BEGIN analysis,set the field separator (FS) to a space. For all lines that
#begin with a #, print the entire record ($0 means the entire record). For all 
#lines that begin with a number 0-9 (possibly negative), use the printf command.
#In the printf command, we are telling awk to only print the last two records,
#(i.e., $8 and $9).Modify the printf command for your own problem. In this case,
#I had 4 objectives located in 101th to 104th column, so I will want use $101, 
#$102, 103th and $104th.

for((i=1;i<=50;i++))
do
	file_in="./results/end_run_${i}.txt"
	file_out="./input_for_moea/end_run_noDV_${i}.txt"
	awk 'BEGIN {FS=" "}; /^#/ {print $0}; /^[-]?[0-9]/ {printf("%s %s %s %s\n",$101,$102,$103,$104)}' $file_in > $file_out	
done
