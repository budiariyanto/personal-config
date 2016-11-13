echo "Setting up fstab..."
FSTABS=("/dev/sda6		/data		ext4		rw,relatime,data=ordered	0 2"
        "/dev/sda15		/data15 	ext4		rw,realtime,data=ordered	0 3"
       )

for tab in "${FSTABS[@]}";
do
	echo "${tab}"
done
