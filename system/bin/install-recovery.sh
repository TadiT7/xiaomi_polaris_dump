#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:53581134:6ffd2ac0f6c8c82143cd9300b94cbb7803b24686; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:48797002:aca0b903d64938cfb3309596db4b3cea90e8b59c EMMC:/dev/block/bootdevice/by-name/recovery 6ffd2ac0f6c8c82143cd9300b94cbb7803b24686 53581134 aca0b903d64938cfb3309596db4b3cea90e8b59c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
