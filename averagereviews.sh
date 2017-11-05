#!/bin/bash 
cd $1

for file in *
do
awk -F ">" '{if($1=="<Overall"){s+=$2;nr++;}}END{if(nr>0)print FILENAME, s/nr}' $file | sed 's/.dat//g' | awk '{printf("%s ",$1);printf("%.2f\n",$2);}'
done | sort -k2nr

