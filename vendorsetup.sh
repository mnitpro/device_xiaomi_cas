RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD=$(tput bold)
BBLACK='\033[1;30m'       # Black
BRED='\033[1;31m'         # Red
BGREEN='\033[1;32m'       # Green
BYELLOW='\033[1;33m'      # Yellow
BBLUE='\033[1;34m'        # Blue
BPURPLE='\033[1;35m'      # Purple
BCYAN='\033[1;36m'        # Cyan
BWHITE='\033[1;37m'       # White

echo -e "                                             "
echo -e "${BGREEN}******************************************************** ${NC}"
echo -e "${BGREEN}*************** MANDATORY TREES FOR BUILD ************** ${NC}"
echo -e "${BGREEN}******************************************************** ${NC}"

echo -e "                                             "
echo -e "${BCYAN}Cloning Kernel Tree [1/3] ${NC}"
# Kernel Tree
git clone --depth=1 https://github.com/XayahSuSuSu/android_kernel_xiaomi_cas kernel/xiaomi/cas
echo -e "                                             "

echo -e "${BCYAN}Cloning Vendor Tree [2/3] ${NC}"
# Vendor Tree
git clone --depth=1 https://gitlab.com/Xayah/vendor_xiaomi_cas vendor/xiaomi/cas
echo -e "                                             "

echo -e "${BCYAN}Cloning Xiaomi HW Tree [3/3] ${NC}"
# Hardware Xiaomi
git clone https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

echo -e "                                             "
echo -e "${BYELLOW}${BOLD}******************************************************** ${NC}"
echo -e "${BYELLOW}${BOLD}******************** OPTIONAL TREES ******************** ${NC}"
echo -e "${BYELLOW}${BOLD}******************************************************** ${NC}"

echo -e "                                             "
echo -e "${BPURPLE}Cloning USB Drivers [4/?]${NC}"
# USB Tree
rm -rf vendor/qcom/opensource/usb
git clone https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

#echo -e "                                             "
#echo -e "${BPURPLE}cloning QCOM SEPolicy [5/?]${NC}"
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

echo -e "                                             "
echo -e "${BPURPLE}Cloning display HAL [6/?]${NC}"
# Display HALs
rm -rf hardware/qcom-caf/sm8250/display
git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_display -b spring-caf-sm8250 hardware/qcom-caf/sm8250/display

#echo -e "                                             "
#echo -e "${BPURPLE}Cloning audio HAL [7/?]${NC}"
# Audio HALs
#rm -rf hardware/qcom-caf/sm8250/audio
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_audio -b spring-caf-sm8250 hardware/qcom-caf/sm8250/audio

#echo -e "                                             "
#echo -e "${BPURPLE}Cloning media HAL [8/?]${NC}"
# Media HALs
#rm -rf hardware/qcom-caf/sm8250/media
#git clone --depth=1 https://github.com/AcmeUI/android_hardware_qcom_media -b spring-caf-sm8250 hardware/qcom-caf/sm8250/media