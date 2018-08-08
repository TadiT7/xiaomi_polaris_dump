#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:53450062:40daeddfc67da764e002d76c6a99283117b0cd81; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:48670026:2d1cb7e084b8ecd94289499389915c4bf2df2957 EMMC:/dev/block/bootdevice/by-name/recovery 40daeddfc67da764e002d76c6a99283117b0cd81 53450062 2d1cb7e084b8ecd94289499389915c4bf2df2957:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
