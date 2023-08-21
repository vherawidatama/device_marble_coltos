#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/colt/config/common.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_DEVICE := marble
PRODUCT_NAME := colt_marble
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ADD-ON
TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := false
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true

# Core_Gapps Include
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
     ro.colt.maintainer=

# ColtOS Maintainer String
PRODUCT_PROPERTY_OVERRIDES += \
    ro.colt.maintainer=
