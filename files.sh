#!/bin/bash
counter=1
directory="~/output$counter"
while [ -d "$directory" ]
do
 # Check if the directory exists.
 find "$directory" -type f -name "*.o" -delete
 # Deletes the *.o files of a directory.
 if [ -f "$directory/Makefile" ]
 	then
 	# Checks if a Makefile exists in the directory.
 	cd "$directory" || exit
 	# Goes into the directory.
 	make
 	# Executes the make program.
 	cd - || exit
 	# Exiting the directory.
 fi
 ((counter++))
 directory="~/output$counter"
done