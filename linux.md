# Most useful commands

top

## list free memory for human or by Mega
free -h
free -m

stat

du

df

locate

rsync

uptime

cal

lshw

cat /proc/cpuinfo

cat /proc/meminfo

lsof

## find out which process use the port 6379

lsof -i:6379

## List all the processes and used ports

lsof -i -P -n | grep LISTEN


bg

fg

