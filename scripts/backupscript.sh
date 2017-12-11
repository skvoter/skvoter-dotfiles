notify-send " Starting Backup"
sudo rsync -avAXS --delete --info=progress2 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/chromium/*","/home/*/.local/share/Trash/*"} / /media/Seagate/backup
if [ $? != 0 ]; then
	notify-send "Backup unsucsessful!"
else
	notify-send "Backup successful!"
fi
