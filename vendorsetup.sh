echo 'Starting to clone stuffs needed for your device'
# Stuff to remove
#rm -rf vendor/qcom/opensource/usb
#rm -rf hardware/qcom-caf/sm8250/display
#rm -rf hardware/qcom-caf/sm8250/audio
#rm -rf hardware/qcom-caf/sm8250/media

#echo 'Cloning Device tree [1/5]'
# Device Tree
#git clone --depth=1 https://github.com/zingrx/device_xiaomi_cas -b elix device/xiaomi/cas

#echo 'Cloning Kernel tree [2/5]'
# Kernel Tree
#git clone --depth=1 https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas

#echo 'Cloning updated USB Drivers [3/5]'
# Qcom USB
#git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

#echo 'Cloning Vendor tree [4/5]'
# Vendor Tree
#git clone --depth=1 https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas

#echo 'Cloning display HAL [5/7]'
# Display HALs
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_display -b spring-caf-sm8250 hardware/qcom-caf/sm8250/display

#echo 'Cloning audio HAL [6/7]'
# Audio HALs
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_audio -b spring-caf-sm8250 hardware/qcom-caf/sm8250/audio

#echo 'Cloning media HAL [7/7]'
# Media HALs
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_media -b spring-caf-sm8250 hardware/qcom-caf/sm8250/media
