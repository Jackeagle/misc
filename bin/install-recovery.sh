#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10944768:f77759171df7fef303d6f85b64def14ca3ff0c89; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:9658624:ac6cf4dd0a06cb736d06212dce277d336e15e357 EMMC:/dev/block/bootdevice/by-name/recovery f77759171df7fef303d6f85b64def14ca3ff0c89 10944768 ac6cf4dd0a06cb736d06212dce277d336e15e357:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
