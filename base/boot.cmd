echo === Toshiba AC100 SOS Bootmenu ===
setenv bootargs 'mem=512M@0 console=tty0 root=/dev/mmcblk0p7 quiet splash'
setenv bootmenu_0 "Install Ubuntu from SD (fat)=fatload mmc 1:1 0x1000000 /boot/zImage; fatload mmc 1:1 0x2200000 /boot/uInitrd; bootz 0x1000000 0x2200000;"
setenv bootmenu_1 "Install Ubuntu from SD (ext2)=ext2load mmc 1:1 0x1000000 /boot/zImage; ext2load mmc 1:1 0x2200000 /boot/uInitrd; bootz 0x1000000 0x2200000;"
setenv bootmenu_2 "Install Ubuntu from USB (fat)=fatload usb 0:1 0x1000000 /boot/zImage; fatload usb 0:1 0x2200000 /boot/uInitrd; bootz 0x1000000 0x2200000;"
setenv bootmenu_3 "Install Ubuntu from USB (ext2)=ext2load usb 0:1 0x1000000 /boot/zImage; ext2load usb 0:1 0x2200000 /boot/uInitrd; bootz 0x1000000 0x2200000;"
bootmenu 5
