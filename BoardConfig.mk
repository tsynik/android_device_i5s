USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/iPhone/i5s/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_PREBUILT_KERNEL := device/iPhone/i5s/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=0 \
persist.mtk.aee.aed=off \
ro.debuggable=1 \
persist.service.adb.enable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=UBIFS

TARGET_BOOTLOADER_BOARD_NAME := i5s

BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
TARGET_RECOVERY_FSTAB := device/iPhone/i5s/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/iPhone/i5s/recovery/recovery.rc
# Home Button As Back
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/iPhone/i5s/recovery/recovery_keys.c
# SLIM TWRP
TW_NO_EXFAT := true
# For Inverted Screen
BOARD_HAS_FLIPPED_SCREEN := true
# For Inverted Touch
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
# MTK part sizes
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x00600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00600000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00080000
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 283115520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 206569472
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_RECOVERY_PIXEL_FORMAT := \"RGBX_8888\"
DEVICE_RESOLUTION := 480x854
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854
