#!/system/bin/sh

echo lz4 > /sys/block/zram0/comp_algorithm
echo 0 > /proc/sys/vm/page-cluster
echo 2048M > /sys/block/zram0/disksize
mkswap /dev/block/zram0
swapon /dev/block/zram0

echo 60 > /proc/sys/vm/swappiness
