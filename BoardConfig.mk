#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from tama-common
-include device/sony/tama-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/akatsuki

# Assert
TARGET_OTA_ASSERT_DEVICE := H8416,H9493,H9436,akatsuki,akatsuki_dual

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := tama_akatsuki_defconfig

# Partitions
# Reserve space for data encryption (44712771584-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 44712755200

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from the proprietary version
-include vendor/sony/akatsuki/BoardConfigVendor.mk
