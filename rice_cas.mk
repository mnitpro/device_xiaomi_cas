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

# Inherit some common Project Elixir stuffs.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true

# AOSP Recovery 
TARGET_USES_AOSP_RECOVERY := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Device Maintainer
DEVICE_MAINTAINER := zinger

PRODUCT_NAME := aosp_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/cas/cas:12/RKQ1.211001.001/V13.0.1.0.SJJCNXM:user/release-keys


# chipset flag enclose var with "" if more than one
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rice.chipset", "Snapdragon 870 5G");
RICE_CHIPSET := "snapdragon 865"

RICE_MAINTAINER := "zinger"

# chipset flag enclose var with "" if more than one
# this will reflect on build/display version, a firmware package/zip name 
# e.g. riceDroid-7.0-COMMUNITY-device-AOSP.zip - AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RICE_PACKAGE_TYPE := "VANILLA AOSP"

# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Allow usage of custom binary linker (LD), default is false
TARGET_KERNEL_OPTIONAL_LD := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true/false - ship with GMS packages, replaces misc AOSP packages with Google packages.

# Customized GMS Flags 
# WITH_GMS flag is required

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Compiler will only build GMS playstore services, its dependencies, and Gboard app.
# package type will change from PIXEL/GMS -> CORE
TARGET_CORE_GMS := true

# extra flag under TARGET_CORE_GMS
TARGET_CORE_GMS_EXTRAS := true

# We took some of Code Linaro optimizations and ported it to AOSP,
# But due to some stuffs we were not able to make the system parse the device perfconfigstore.xml automatically
# builders might need to tune runtime properties listed below (with reference and CLO counterparts)

# Memory properties

# Max cached app processes in system, overrides "config_customizedMaxCachedProcesses"
persist.sys.fw.bg_apps_limit=96

# Code linaro LMKD properties and its AOSP counterparts - refer to perfconfigstore.xml (if available) for tuning purposes
# kill_heaviest_task_dup
ro.lmk.kill_heaviest_task=true
# kill_timeout_ms_dup
ro.lmk.kill_timeout_ms=100
# use_new_strategy_dup
ro.lmk.use_new_strategy=true
# thrashing_threshold
ro.lmk.thrashing_limit=30
# thrashing_decay
ro.lmk.thrashing_limit_decay=5
# nstrat_low_swap
ro.lmk.swap_free_low_percentage=10
# nstrat_psi_partial_ms
ro.lmk.psi_partial_stall_ms=70
# nstrat_psi_complete_ms
ro.lmk.psi_complete_stall_ms=70
# CLO lmkd [1] - others were not defined (will use default values from lmkd binary)
ro.lmk.psi_scrit_complete_stall_ms=75
ro.lmk.nstrat_wmark_boost_factor=4
ro.lmk.enable_watermark_check=true
ro.lmk.enable_userspace_lmk=true
ro.lmk.super_critical=701
ro.lmk.direct_reclaim_pressure=45
ro.lmk.reclaim_scan_threshold=0
