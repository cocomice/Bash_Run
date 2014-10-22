#!/bin/sh
#this simple script is for random seed analysis of BORG 
#the script will call the execution file (BorgExec.exe and MyProblem.exe )
#multiple times (e.g. 50 seeds in this case), and export the results into different files
#given variable filenames (filename1 and filename2).
#when run this script on your terminal, you might need to first change the permission of the 
#script using "chmod a+x name.sh" and then call "./name.sh&", where "&" allows you to run it 
#on the background.

for ((i=1;i<=50;i++))
do
	filename1="./results/run_time_out_${i}.txt"
	filename2="./results/end_run_${i}.txt"
	./BorgExec.exe -R ${filename1} -F 500 -s ${i} -v 100 -o 4 -c 1 -l 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 -u 0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1 -e 0.01,0.01,0.0001,0.0001 -n 10000 -f ${filename2} -- ./MyProblem.exe
done