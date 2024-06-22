#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/rhode/device.mk)

# Inherit some common The Xperience Project stuff.
$(call inherit-product, vendor/xperience/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
XPERIENCE_MAINTAINER := FPSensor
XPERIENCE_CHIPSET := "sm6225"
XPERIENCE_BATTERY := 5000mAh
XPERIENCE_DISPLAY := 1080x2400
TARGET_STOCK_GAPPS := true
WITH_GMS := true
TARGET_ENABLE_PIXEL_GOODIES := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xperience_rhode
PRODUCT_DEVICE := rhode
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/rhode_g/rhode:13/T2SRS33.72-22-4-5/c8b18-716928:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhode_g \
    PRIVATE_BUILD_DESC="rhode_g-user 13 T2SRS33.72-22-4-5 c8b18-716928 release-keys"
