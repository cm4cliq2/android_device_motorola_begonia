# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).



# Board properties Hardware
TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8
#TARGET_OMAP3 := true
#OMAP_ENHANCEMENT := true
#COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT
#COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP3

# This define is for moto defy
# Commit see here https://github.com/CyanogenDefy/android_hardware_ti_omap3-compat/commit/31a0928f5459738151581a3618d87691874b1388
# Though it is for moto defy, but we(cliq2) should use it
# This should be removed after they change the build flag
COMMON_GLOBAL_CFLAGS += -DMOTO_FORCE_RECOVERY

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := tiwlan0
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1271.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/fw_tiwlan_ap.bin"
#PRODUCT_WIRELESS_TOOLS      := true

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
# need to make sure if we should enable this define
BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
HARDWARE_OMX := true
BUILD_WITH_TI_AUDIO := 1

# Graphics
BOARD_EGL_CFG := device/motorola/begonia/egl.cfg
BOARD_NO_RGBX_8888 := true
BUILD_PV_VIDEO_ENCODERS := 1	
#BUILD_JPEG_DECODER := 1
#BUILD_JPEG_ENCODER := 1

# Blue Tooth
BOARD_HAVE_BLUETOOTH := true

# Kernel
# mtd4 0x003fffff => boot
# mtd5 0x004fffff => recovery
# mtd7 0x0bdfffff => system
# mtd9  0x105c0000 => usrdata
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x18aa0000 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x15e00000 
BOARD_FLASH_BLOCK_SIZE := 131072

# Mass Storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Changes related to bootmenu
BOARD_USES_BOOTMENU := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_PREINSTALL := true
TARGET_BOOTLOADER_BOARD_NAME := begonia

# TODO: is this define for disable build the recovery & kernel the rom package file ?
# This option may be removed in the future
#TARGET_NO_RECOVERY := true
#TARGET_NO_KERNEL := true

# Keep old variables until system core patch is merged
#TARGET_RECOVERY_PRE_COMMAND := "/system/bootmenu/script/reboot_command.sh recovery"
#TARGET_RECOVERY_PRE_COMMAND_CLEAR_REASON := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/begonia/recovery_ui.c
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_NEVER_UMOUNT_SYSTEM := true
#TARGET_RECOVERY_UI_LIB := librecovery_ui_generic
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_generic

# Begonia requires the common boot hijack
#TARGET_NEEDS_MOTOROLA_HIJACK := true

# Override cyanogen squisher to customize our update zip package
TARGET_CUSTOM_RELEASETOOL := ./device/motorola/begonia/releasetools/squisher


# In nighly builds only
#ifndef CYANOGEN_RELEASE

#BOARD_HAVE_FM_RADIO := true
#BOARD_FM_DEVICE := tiwlan0
#TARGET_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#TARGET_GLOBAL_CPPFLAGS += -DHAVE_FM_RADIO

#endif

