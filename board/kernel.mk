# kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := merge_msm8937_64_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#TARGET_KERNEL_SOURCE := kernel/huawei/ags_w09
TARGET_USE_SDCLANG := true

TARGET_PREBUILT_KERNEL := device/huawei/ags_w09/kernel/zImage
INSTALLED_KERNEL_HEADERS := device/huawei/ags_w09/kernel/headers

# ExFAT target
TARGET_EXFAT_DRIVER := exfat
