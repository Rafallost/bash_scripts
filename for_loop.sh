# !/bin/bash
for ((i=0; i<10; i++))
do
	if [ $i -le 5 ]
	then
		echo "Coal burns"
	elif ((i==6))
	then
		echo "coal is ending"
	else
		echo "the coal burned out"
	fi
done