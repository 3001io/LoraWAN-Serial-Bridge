#! /bin/bash
declare -a array
cat /var/log/dylos/dylos.data | while read line; do
#line=(1482160140,22,33);
IFS=","
array=("$line") 
#echo "${array[0]}""${array[1]}""${array[2]}"
rrdtool update /var/dylos/rrd/dylos_1.rrd "${array[0]}":"${array[1]}":"${array[2]}"
done
