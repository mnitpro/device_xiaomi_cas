rm -rf device/xiaomi/extras
rm -rf hardware/xiaomi
rm -rf vendor/qcom/opensource/fm-commonsys
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_extras.git device/xiaomi/extras
git clone https://github.com/ArrowOS-Devices/android_hardware_xiaomi.git hardware/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_gauguin.git vendor/xiaomi/gauguin
git clone --depth=1 https://github.com/ArrowOS-Devices/android_kernel_xiaomi_gauguin.git kernel/xiaomi/gauguin
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_fm-commonsys.git vendor/qcom/opensource/fm-commonsys
