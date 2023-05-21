#!/bin/bash
x=`ls -al | wc -l`
echo "ls -al | wc-l value is: ${x}"
y=2
y=`expr $y + 2`
echo "2 + 2 = $y"
echo "$#"# Amount of arguments
echo "$*"

for fn in *.txt
do
        echo "plik ${fn}: `du ${fn}`"
done
