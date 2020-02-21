#!/bin/sh
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx6ull_zdyz_emmc_defconfig
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8
make -j8
cp -rf ./arch/arm/boot/zImage ~/tftpboot
cp -rf ./arch/arm/boot/dts/imx6ull-zdyz-emmc-7-800*480.dtb ~/tftpboot
echo "copy finish"
