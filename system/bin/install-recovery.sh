#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50906446:fffe65b6c7494a38f5116a853d9223a64751be79; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47162698:79688e93bb7c51bc0679f642e3fc730cd7a6de40 EMMC:/dev/block/bootdevice/by-name/recovery fffe65b6c7494a38f5116a853d9223a64751be79 50906446 79688e93bb7c51bc0679f642e3fc730cd7a6de40:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
