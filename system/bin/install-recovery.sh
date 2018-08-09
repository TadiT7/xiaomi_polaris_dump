#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:53450062:ca3ecc71032e72fba5da158942ff56446bed572e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:48670026:8fccceec4ced9a8cc3c74387496c417333bd460a EMMC:/dev/block/bootdevice/by-name/recovery ca3ecc71032e72fba5da158942ff56446bed572e 53450062 8fccceec4ced9a8cc3c74387496c417333bd460a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
