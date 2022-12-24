#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit some common Evolution-X stuff.
$(call inherit-product, vendor/evolution/config/mobile.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := evolution_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

WITH_GMS_CORE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
