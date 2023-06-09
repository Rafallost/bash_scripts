#!/bin/bash
i=5
echo "The value of the local variable i = ${i}"
export y=9
echo -e "\tThe value of the global variable y = ${y}"
echo "Script name = $0"
echo "Additional parameters passed to the script = $1,$2,$3,$4"
echo 'The same as above but in single quotes = $1,$2,$3,$4'
echo "Number of parameters passed to the script = $#"
echo "All parameters as a single string = $*"
echo "Status of the last command (equivalent to Windows ERRORLEVEL): $?"
files=`ls -l ~/ | wc -l`
echo "Number of files and directories in ~/ directory: ${files}"
result=`expr $i + $y`
echo "Result of expr $i + $y = $result"
echo "5 + 7 / 13" | bc -l

iteration=1

while (( $iteration <= $# ))
do
echo "Argument number $iteration = ${!iteration}"
iteration=$((iteration+1))
done