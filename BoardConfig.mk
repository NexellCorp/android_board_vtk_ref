#
# Copyright (C) 2015 The Android Open-Source Project
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

TARGET_BOARD_PLATFORM := s5p4418
TARGET_BOOTLOADER_BOARD_NAME := vtk_ref
TARGET_BOARD_INFO_FILE := device/nexell/vtk_ref/board-info.txt

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# recovery
TARGET_RELEASETOOLS_EXTENSIONS := device/nexell/vtk_ref
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_nexell
TARGET_RECOVERY_FSTAB := device/nexell/vtk_ref/recovery.fstab

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_AUDIO_N := true

BOARD_EGL_CFG := device/nexell/vtk_ref/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# see surfaceflinger
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_PIC := true
    endif
  endif
endif

# touch
BOARD_USES_TSLIB := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/nexell/vtk_ref/bluetooth
BOARD_CUSTOM_BT_CONFIG := device/nexell/vtk_ref/bluetooth/vnd_vtk_ref.txt
BOARD_CHARGER_ENABLE_SUSPEND := false

# bluetooth audio paths
SND_BT_CARD_ID := 0
SND_BT_DEVICE_ID := 0
SND_BT_SCO_CARD_ID := 0
SND_BT_SCO_DEVICE_ID := 2

# ffmpeg libraries
EN_FFMPEG_EXTRACTOR := false
EN_FFMPEG_AUDIO_DEC := false

# sepolicy
BOARD_SEPOLICY_DIRS += \
	device/nexell/vtk_ref/sepolicy

# filesystems
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4920246272
BOARD_FLASH_BLOCK_SIZE := 131072

# boot image layout
BOARD_KERNEL_PAGESIZE := 2048
TARGET_BOOTLOADER_IS_2ND := true

TARGET_USES_AOSP := true

USE_CLANG_PLATFORM_BUILD := true

# wifi
BOARD_WIFI_VENDOR := realtek
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER	:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB	:= lib_driver_cmd_rtl

BOARD_WLAN_DEVICE	:= rtl8188eu

WIFI_DRIVER_MODULE_NAME		:= "wlan"
WIFI_DRIVER_MODULE_PATH		:= "/system/vendor/realtek/wlan.ko"
WIFI_DRIVER_MODULE_ARG		:= "ifname=wlan0 if2name=p2p0"

WIFI_FIRMWARE_LOADER		:= "rtw"
WIFI_DRIVER_FW_PATH_STA		:= "STA"
WIFI_DRIVER_FW_PATH_AP		:= "AP"
WIFI_DRIVER_FW_PATH_P2P		:= "P2P"
WIFI_DRIVER_FW_PATH_PARAM	:= "/dev/null"

# certificate
PRODUCT_DEFAULT_DEV_CERTIFICATE := device/nexell/vtk_ref/signing_keys/release

# camera
BOARD_CAMERA_BACK_DEVICE := "7"
BOARD_CAMERA_BACK_ORIENTATION := "0"
# Interlaced Mode
# default - Progressive
# Progressive - 0, Interlaced MIPI - 1, Interlaced Parallel - 2
BOARD_CAMERA_BACK_INTERLACED := "0"
# Clipper Only Mode - not use decimator for recording
BOARD_CAMERA_BACK_COPY_MODE := "1"
BOARD_CAMERA_FRONT_DEVICE := "6"
BOARD_CAMERA_FRONT_ORIENTATION := "0"
BOARD_CAMERA_FRONT_INTERLACED := "0"
BOARD_CAMERA_FRONT_COPY_MODE := "0"
BOARD_CAMERA_NUM := 2
#BOARD_CAMERA_USE_ZOOM := true
#BOARD_CAMERA_SUPPORT_SCALING := true

TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# gralloc
BOARD_GRALLOC_ALIGN_FACTOR := 128

TARGET_NO_DTIMAGE = false
