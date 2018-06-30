#!/bin/sh

set -e
make CROSS_COMPILE=arm-linux-gnueabihf- -j7

./tools/mkimage -n rk3288 -T rkspi  -d spl/u-boot-spl.bin spl.bin 
dd if=spl.bin of=spl-out.bin bs=128K conv=sync 
cat spl-out.bin u-boot-dtb.img >out.bin 
dd if=out.bin of=out.bin.pad bs=4M conv=sync
