echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Device tree [1/4]'
# Device Tree
git clone --depth=1 https://github.com/mnitpro/device_xiaomi_cas -b elix device/xiaomi/cas

echo 'Cloning Kernel tree [2/4]'
# Kernel Tree
git clone --depth=1 https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas

echo 'Cloning DT extra [3/4]'
# DT extra
git clone --depth=1 https://github.com/ArrowOS-Devices/android_device_xiaomi_extras device/xiaomi/extras

echo 'Cloning Vendor tree [4/4]'
# Vendor Tree
git clone --depth=1 https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas
