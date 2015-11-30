#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10950912:66fd11dfd9382af01ed97abe2fabce6f63f3e007; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:9664768:f3fe5324340354547d2faeca444cf66451e03d88 EMMC:/dev/block/bootdevice/by-name/recovery 66fd11dfd9382af01ed97abe2fabce6f63f3e007 10950912 f3fe5324340354547d2faeca444cf66451e03d88:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
