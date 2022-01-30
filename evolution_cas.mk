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

<<<<<<< HEAD:aosp_cas.mk
# Inherit some common Project Elixir stuffs.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
CUSTOM_BUILD_TYPE := OFFICIAL
=======
# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
>>>>>>> 905eb7e... cas: It's snow time!:evolution_cas.mk

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

<<<<<<< HEAD:aosp_cas.mk
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_cas
=======
# Evolution-X things
EVO_BUILD_TYPE := OFFICIAL
EVO_MAINTAINER := tarsin

PRODUCT_NAME := evolution_cas
>>>>>>> 905eb7e... cas: It's snow time!:evolution_cas.mk
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
<<<<<<< HEAD:aosp_cas.mk

BUILD_FINGERPRINT := Xiaomi/cas/cas:12/RKQ1.211001.001/V13.0.1.0.SJJCNXM:user/release-keys
=======
>>>>>>> 905eb7e... cas: It's snow time!:evolution_cas.mk
