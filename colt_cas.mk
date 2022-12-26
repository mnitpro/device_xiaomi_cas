#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit from the coltOS configuration.
$(call inherit-product, vendor/colt/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080x1920

#Inherit Gapps
COLT_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device Identifier
PRODUCT_NAME := colt_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
BUILD_FINGERPRINT := Xiaomi/cas/cas:12/RKQ1.211001.001/V13.0.5.0.SJJCNXM:user/release-keys

# Maintainer
COLT_BUILD_TYPE := Unofficial
COLT_BUILD_MAINTAINER := Zinger
