#!/bin/bash

echo "Choose what to do "
	select i in Kill Hello Exit;do
 		case $i in
	 		Kill)
	 		echo "give PID:"
	 		read $PID
			kill -9 $PID
			exit
			;;
			Hello)
			echo "Hello!"
			exit
			;;
			Exit)
			break
			;;
		esac
	done

exit 0