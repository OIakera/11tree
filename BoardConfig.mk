# Inherit from sdm660-common
-include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/whyred

# Assert
TARGET_OTA_ASSERT_DEVICE := whyred

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080p

#Build
BUILD_BROKEN_DUP_RULES := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Kernel
TARGET_KERNEL_CONFIG := whyred_defconfig

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest.xml

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648

# IPA
USE_DEVICE_SPECIFIC_DATA_IPA_CFG_MGR := true


# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Security patch level
VENDOR_SECURITY_PATCH := 2020-12-01

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_whyred
TARGET_RECOVERY_DEVICE_MODULES := libinit_whyred

# Inherit the proprietary files
-include vendor/xiaomi/whyred/BoardConfigVendor.mk
