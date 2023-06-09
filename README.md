# bash_scripts
You will need to give permission every file before execute ( sudo chmod 700 file.sh)
to run program write: sudo ./file.sh
**You can use command "sudo su" on the beginning and avoid writing it before every command**

avg.sh:
 Calculating average value of given arguments
 ./avg.sh 2 3 5 6

Link_and_compile.sh:
 Compile "program.c", name "result" and run

amount_of_arguments.sh:
 showing value of using command: ls -al | wc -l, result of 2+2, amount of given arguments and sizes of every file .txt

for_loop.sh:
 example of for loop in bash

files.sh:
 script iterates over directories named "/output1", "/output2", "~/output3", and so on. For each existing directory, it deletes ".o" files within it and runs the "make" command if a "Makefile" exists.

downloading_html.sh:
  script downloads HTML content from URLs constructed based on the provided arguments (lower_limit to upper_limit). It records any errors encountered during the downloads in the "errors.txt" file. 

simple_things.sh:
 Some random things in bash

select.sh
 Example of select condition  

start.sh
 Start or stop a program and log the action along with the current date and time. If the argument is "start", the program specified as the second argument will be started. If the argument is "stop", the previously started program will be stopped using the killall command. The log messages will be written to the specified log file.

directions.sh
 Moves all files with the extension given by read from the current directory i subdirectories to the folder given as an argument.
