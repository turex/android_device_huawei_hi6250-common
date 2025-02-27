#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

VENDOR_PATH := device/huawei/hi6250-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := loglevel=4 initcall_debug=n page_tracker=on unmovable_isolate1=2:192M,3:224M,4:256M printktimer=0xfff0a000,0x534,0x538
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07A00000
BOARD_RAMDISK_OFFSET := 0x10000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/huawei/hi6250
TARGET_KERNEL_CONFIG := phenix_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

#Toolchain
KERNEL_TOOLCHAIN := /mnt/android/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-elf/bin/
KERNEL_TOOLCHAIN_PREFIX := aarch64-elf-

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Treble
BOARD_VNDK_VERSION := current

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(VENDOR_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Board
TARGET_BOARD_INFO_FILE := $(VENDOR_PATH)/board-info.txt

# Display
TARGET_USES_HWC2 := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(VENDOR_PATH)/framework_manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_hi6250
TARGET_RECOVERY_DEVICE_MODULES := libinit_hi6250

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2207764736
TARGET_COPY_OUT_VENDOR := vendor

# Radio
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Recovery
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/rootdir/etc/fstab.hi6250
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Release tools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_huawei
TARGET_RELEASETOOLS_EXTENSIONS := $(VENDOR_PATH)/releasetools

# Root
BOARD_ROOT_EXTRA_FOLDERS := \
    cust \
    hw_odm \
    modem_log \
    preload \
    sec_storage \
    splash2 \
    version

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(VENDOR_PATH)/sepolicy/public
