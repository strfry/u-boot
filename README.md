This fork stores the modifications and configs for u-booting a certain Chromebook ("MEDION Akoya 2015", a.k.a. 'veyron_mighty' )

# Preconditions

* A cross-compiler for arm-linux-gnueabihf

# Files:

  - config-veyron_mighty: u-boot configuration. Copy to .config
  - build-rockchip.sh: Build script that cares for special Rockchip SPL layout

# Installation

Attach a programmer+clip to the SPI Flash and run flashrom:

    flashrom -p ch341a_spi -w out.bin.pad

For the kernel i tested the master branch of https://github.com/endlessm/linux-rockchip/ with linux_rockchip_defconfig
