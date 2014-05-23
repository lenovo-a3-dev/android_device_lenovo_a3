# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_FOLDER := device/lenovo/a3

-include vendor/lenovo/a3/BoardConfigVendor.mk

# board
TARGET_BOARD_PLATFORM := mt6589
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

TARGET_OTA_ASSERT_DEVICE := a3,a3000_row_call,A3000,a3000

# blob hacks
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# power
TARGET_POWERHAL_VARIANT := cm

# boot
TARGET_NO_BOOTLOADER := true
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

# EGL settings
BOARD_EGL_CFG := device/lenovo/a3/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel

# partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 629145600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16116613120
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 48307896320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 629145600
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# recovery
RECOVERY_NAME := ClockworkMod Recovery for the Lenovo A3000-H
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/root/fstab.mt6589
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 1024x600

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mtk

# telephony
BOARD_RIL_CLASS := ../../../device/lenovo/a3/ril/
