#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:44856620:ef03e2dd4ec581feb203a063315780fbc599bd6d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:40269096:b011a391901c5d55603e5ff49d9f37f730cc96d4 EMMC:/dev/block/bootdevice/by-name/recovery ef03e2dd4ec581feb203a063315780fbc599bd6d 44856620 b011a391901c5d55603e5ff49d9f37f730cc96d4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
