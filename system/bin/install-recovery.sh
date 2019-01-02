#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:51778894:bfe1f41e3893213b0d4e8c43a4fc7e821a232025; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47371594:649e0469c81e9cf529580a15159d5b89277a12f5 EMMC:/dev/block/bootdevice/by-name/recovery bfe1f41e3893213b0d4e8c43a4fc7e821a232025 51778894 649e0469c81e9cf529580a15159d5b89277a12f5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
