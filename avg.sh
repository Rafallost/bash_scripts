
#!/bin/bash

sum=0
amount=$#

for fn in $*
do
        echo "Call nr. $fn"
        sum=`expr $sum + $fn`
done

avg=`expr $sum / $amount`
echo "AVG = $avg"
