PUT_DIRS  =
PUT_FILES =

# UDEV utilities
PUT_FILES += \
	/sbin/udevd \
	/sbin/udevadm \
	/lib/udev/ata_id \
	/lib/udev/cdrom_id \
	/lib/udev/edd_id \
	/lib/udev/firmware \
	/lib/udev/path_id \
	/lib/udev/scsi_id \
	/lib/udev/usb_id

PUT_FILES += \
	$(shell test -f /lib/udev/vol_id && echo /lib/udev/vol_id)

# System utilities
PUT_FILES += \
	/sbin/blkid \
	/sbin/modprobe \
	/sbin/reboot \
	/sbin/poweroff \
	/sbin/halt \
	/bin/ash \
	/bin/cat \
	/bin/kill \
	/bin/ln \
	/bin/ls \
	/bin/mkdir \
	/bin/mknod \
	/bin/mount \
	/bin/umount \
	/bin/readlink \
	/bin/rm \
	/bin/sleep

# System files
PUT_FILES += /etc/group /etc/passwd

# initrd specific utilities
PUT_DIRS += /lib/initrd