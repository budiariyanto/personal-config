# How To Fix Grub Resolution After Install NVIDIA Driver
----
1. In Grub press C and enter vbeinfo. It will show supported resolutions
1. Boot Ubuntu and in terminal write sudo gedit /etc/default/grub
1. After line #GRUB_GFXMODE=640x480 write GRUB_GFXPAYLOAD_LINUX=1680x1050x32 (here your supported resolution)
1. Next in terminal: echo "FRAMEBUFFER=y" | sudo tee -a /etc/initramfs-tools/conf.d/splash
1. sudo update-initramfs -u -k all
1. sudo update-grub
1. Reboot and look at that beautiful screen again.

If this method don't works, you can try this
----
1. sudo apt-get install v86d hwinfo
1. sudo hwinfo --framebuffer
1. Choose highest resolution
1. sudo gedit /etc/default/grub
1. Change line GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" to look like this GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nomodeset video=uvesafb:mode_option=1280x1024-24,mtrr=3,scroll=ywrap"
1. Uncomment and change line GRUB_GFXMODE=1280x1024-24
1. sudo gedit /etc/initramfs-tools/modules
1. At end of file add line uvesafb mode_option=1280x1024-24 mtrr=3 scroll=ywrap
1. echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash
1. sudo update-grub
1. sudo update-initramfs -u
1. Restart computer.

