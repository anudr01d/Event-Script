#!/bin/sh

#***** GROUP EVENTS *****
#DESCRIPTION : Script to identify and filter important events in a whatsapp group chat
#VERSION : 1.0
#AUTHOR : ANUDEEP
#************************

awk '/Happy | happy / && !/congratulations | Congratulations | congrats | Congrats | for | the | of | Gn | it | It | to | in | not/ { 
if ($1 ~ !/:$/) { printf "%s ", $1};
{for(i=7;i<=NF;i++){printf "%s ", $i}; 
printf "\n"};
}' input.txt > tmp.txt

awk '!NF || !seen[$1]++' tmp.txt > temp.txt 

sed '/^$/d' temp.txt > output.txt

