#OS Bit 
$getconf LONG_BIT

OS Series
$cat /etc/issue

OS Details
$cat /proc/version



CPU Info
$cat /proc/cpuinfo

#Count of CPU Core
$grep -c processor /proc/cpuinfo 

#Number of physical CPU
grep ^processor /proc/cpuinfo | wc -l

#Number of physical cores per CPU
$ grep 'cpu cores' /proc/cpuinfo | tail -1



RAM Memory
$cat /proc/meminfo

DISK Memory
$df -h

#Currnet Linux architecture
uname -m OR -p
