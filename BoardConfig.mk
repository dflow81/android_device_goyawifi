# inherit from the proprietary version
-include vendor/samsung/goyawifi/BoardConfigVendor.mk

# CPU
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mrvl
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Board
INPUT_TOUCH_DRIVER := TOUCH_CS2
TARGET_BOOTLOADER_BOARD_NAME := PXA988
BOARD_USES_MRVL_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #16M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736 #1.5G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5476083302 #5.1G
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
#TARGET_PREBUILT_KERNEL := device/samsung/goyawifi/kernel
TARGET_KERNEL_SOURCE  := kernel/samsung/goyawifi
TARGET_KERNEL_CONFIG  := pxa986_goyawifi_rev02_defconfig
#BOARD_KERNEL_CMDLINE  := 
#BOARD_KERNEL_BASE     := 0x10000000
#BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x01000000
#BOARD_KERNEL_PAGESIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true

# Camera
USE_CAMERA_STUB := true

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/goyawifi/configs/egl.cfg

# Wifi
BOARD_HAVE_MARVELL_WIFI          := true
BOARD_WLAN_DEVICE                := mrvl
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/mlan.ko"
WIFI_EXT_MODULE_NAME             := "mlan"
WIFI_EXT_MODULE_ARG              := ""
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/sd8xxx.ko"
WIFI_DRIVER_MODULE_NAME	         := "sd8xxx"
WIFI_DRIVER_MODULE_ARG           := "drv_mode=5 cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=mrvl/sd8787_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/proc/mwlan/config"
WIFI_DRIVER_FW_PATH_STA          := "drv_mode=5"
WIFI_DRIVER_FW_PATH_AP           := "drv_mode=6"
WIFI_DRIVER_FW_PATH_P2P          := "drv_mode=5"

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# Charging mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

# TWRP
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/samsung/goyawifi/recovery/twrp.fstab
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_SDCARD_ON_DATA := true
DEVICE_RESOLUTION := 1024x600
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_RECOVERY_SWIPE := true
TWRP_EVENT_LOGGING := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_FUSE_EXFAT := true
TW_HAS_DOWNLOAD_MODE := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files
