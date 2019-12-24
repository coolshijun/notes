# Most useful linux commands

## top

press h to show help window

press c to show complate command path

press e/E to change memory scale

press i to hide idle items

press u to filter by User

press k to kill process by PID


## free

free --help

## list free memory for human
free -h

## list free memory in mega
free -m


## stat
stat


## du

du --help

## calculate disk usage for directory deepth 1 for human
du -d1 -h

## show total usage for current folder
du -sh

## show all folders usage
du -ah

## df

df --help

## show disk usage for local file system for human
df -l -h


## locate
locate

## rsync, synchronize source to destination

rsync -a /home/apps /backup/

rsync -avz /home/apps $ linoxide@192.168.10.1:/backup

## uptime

uptime

uptime -p //pretty

uptime -s //system up since

## cal , show calendar

cal

## list hardware information

lshw


## show cpu info

cat /proc/cpuinfo

## show memory info

cat /proc/meminfo


## lsof, list open files
lsof

## find out which process use the port 6379

lsof -i:6379

## List all the processes and used ports

lsof -i -P -n | grep LISTEN


## move job to the background/ foreground

bg


fg

