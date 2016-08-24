#!/bin/bash
set -x
make clean && make mrproper
export CROSS_COMPILE=~/android/android-ndk-r12b/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-
export ARCH=arm64
export SUB_ARCH=arm64
export KERNEL_CONFIG=/arch/arm64/configs/DarkSense_defconfig
make ARCH=arm64 DarkSense_defconfig
make -j6 ARCH=arm64
