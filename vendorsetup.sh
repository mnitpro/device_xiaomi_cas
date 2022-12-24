echo 'Starting to clone stuffs needed for your device'

############################################################################
##                      MANDATORY TREES FOR BUILD                         ##
############################################################################

echo 'Cloning Kernel tree [1/3]'
# Kernel Tree
git clone --depth=1 https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas

echo 'Cloning Vendor tree [2/3]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas

echo 'Cloning Xiaomi HW Tree [3/3]'
# Hardware Xiaomi
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

############################################################################
##              OPTIONAL TREES DEPENDING ON DEVICE NEEDS                  ##
############################################################################

#echo 'Cloning USB Drivers [4/?]'
# USB Tree
#rm -rf vendor/qcom/opensource/usb
#git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

#echo 'Cloning QCOM SEPolicy [5/?]'
# QCOM SEPolicy
#rm -rf device/qcom/sepolicy
#git clone https://github.com/ArrowOS/android_device_qcom_sepolicy -b arrow-13.0 device/qcom/sepolicy
#rm -rf device/qcom/sepolicy-legacy
#git clone https://github.com/ArrowOS/android_device_qcom_sepolicy-legacy device/qcom/sepolicy-legacy
#rm -rf device/qcom/sepolicy-legacy-um
#git clone https://github.com/ArrowOS/android_device_qcom_sepolicy-legacy-um -b arrow-13.0 device/qcom/sepolicy-legacy-um
#rm -rf device/qcom/sepolicy_vndr
#git clone https://github.com/ArrowOS/android_device_qcom_sepolicy_vndr -b arrow-13.0 device/qcom/sepolicy_vndr
#rm -rf device/qcom/sepolicy_vndr-legacy-um
#git clone https://github.com/ArrowOS/android_device_qcom_sepolicy_vndr-legacy-um -b arrow-13.0 device/qcom/sepolicy_vndr-legacy-um

#echo 'Cloning display HAL [6/?]'
# Display HALs
#rm -rf hardware/qcom-caf/sm8250/display
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_display -b spring-caf-sm8250 hardware/qcom-caf/sm8250/display

#echo 'Cloning audio HAL [7/?]'
# Audio HALs
#rm -rf hardware/qcom-caf/sm8250/audio
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_audio -b spring-caf-sm8250 hardware/qcom-caf/sm8250/audio

#echo 'Cloning media HAL [8/?]'
# Media HALs
#rm -rf hardware/qcom-caf/sm8250/media
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_media -b spring-caf-sm8250 hardware/qcom-caf/sm8250/media
