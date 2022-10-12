echo 'Starting to clone stuffs needed for your device'
# Stuffs to rm -rf
rm -rf hardware/qcom-caf/sm8250/display

echo 'Cloning Device tree [1/5]'
# Device Tree
git clone --depth=1 https://github.com/mnitpro/device_xiaomi_cas -b elix device/xiaomi/cas

echo 'Cloning Kernel tree [2/5]'
# Kernel Tree
git clone https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas

echo 'Cloning DT extra [3/5]'
# DT extra
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_extras device/xiaomi/extras

echo 'Cloning Vendor tree [4/5]'
# Vendor Tree
git clone https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas

echo 'Cloning qom-cad/sm8250/display [5/5]'
# HW Display
git clone https://github.com/AcmeUI/android_hardware_qcom_display -b spring-caf-sm8250 hardware/qcom-caf/sm8250/display