echo 'Starting to clone stuffs needed for your device'
rm -rf vendor/qcom/opensource/usb
rm -rf device/qcom/sepolicy

echo 'Cloning Device tree [1/6]'
# Device Tree
#git clone --depth=1 https://github.com/zingrx/device_xiaomi_cas -b elix device/xiaomi/cas

echo 'Cloning Kernel tree [2/6]'
# Kernel Tree
git clone --depth=1 https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas

echo 'Cloning updated USB Drivers [3/6]'
# Qcom USB
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

echo 'Cloning Vendor tree [4/6]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas

echo 'Cloning Hardware Xiaomi tree [5/6]'
# Hardware Xiaomi
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

echo 'Cloning Device QCOM SEPolicy [6/6]'
# Device SEPolicy
git clone https://github.com/ArrowOS/android_device_qcom_sepolicy -b arrow-13.0 device/qcom/sepolicy
