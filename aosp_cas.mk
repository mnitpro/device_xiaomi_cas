#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cas device
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit some common aosp X stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

DEVICE_MAINTAINER := zinger
OFFICIAL_BUILD := false

PRODUCT_NAME := aosp_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
