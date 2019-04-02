#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56333646:e6310c97c8f2d648e9d06ec040091908fb913a6a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50365770:6633e375ad41407fc3029651f4e4c06839304b72 EMMC:/dev/block/bootdevice/by-name/recovery e6310c97c8f2d648e9d06ec040091908fb913a6a 56333646 6633e375ad41407fc3029651f4e4c06839304b72:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
