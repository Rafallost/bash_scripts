#!/bin/bash
lower_limit=$1
upper_limit=$2
if ((lower_limit < upper_limit))
then
 	for ((value = lower_limit; value <= upper_limit; value++))
 	do
	 	url="http://strona.tld/wonload.php?id=$value"
	 	output_file="$value.html"
 		wget "$url" -O "$output_file" >/dev/null 2>&1
 		exit_code=$?
 		if ((exit_code != 0))
 		then
 			echo "$value: $exit_code" >> ./errors.txt
 		elif [[ ! -e "./$output_file" ]]
 		then
 			echo "$value" >> ./errors.txt
 		fi
 	done
fi

exit 0