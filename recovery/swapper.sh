#!/sbin/sh
/sbin/echo "268435456" > /sys/block/zram0/disksize
/sbin/echo "50" > /proc/sys/vm/swappiness
/sbin/mkswap /dev/block/zram0
/sbin/swapon /dev/block/zram0
