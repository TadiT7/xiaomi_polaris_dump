#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:53462350:9d55a1c49fd5e4ec4001877e66fb94413c25ef74; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:48682314:c823aafbfd1b51d1dd097a2df43272fa24c81a65 EMMC:/dev/block/bootdevice/by-name/recovery 9d55a1c49fd5e4ec4001877e66fb94413c25ef74 53462350 c823aafbfd1b51d1dd097a2df43272fa24c81a65:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
