BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false

TARGET_ARM_TYPE := arm64

# Primary Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a

# Secondary Arch
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_BOARD_PLATFORM := hi6210sft
WITH_DEXPREOPT ?= true
USE_OPENGL_RENDERER := true
ANDROID_ENABLE_RENDERSCRIPT := true

# BT configs
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := "device/linaro/hi6210sft/bluetooth"
BOARD_HAVE_BLUETOOTH := true

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/cherryk/ril

# generic wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y

PROTOBUF_SUPPORTED := true
TARGET_RIL_VARIANT := proprietary
TARGET_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

ANDROID_64=true

BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=permissive ate_enable=true selinux=0

BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/hi6210sft
TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig

TARGET_KERNEL_PREBUILT := kernel/hi6210sft/out/arch/arm64/Image

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_HARDWARE_3D := true
BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USE_PAN_DISPLAY := true

# Partition Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2550136832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4064280576
BOARD_FLASH_BLOCK_SIZE := 131072

SUPERUSER_PACKAGE := com.sys.superuser
SUPERUSER_EMBEDDED := true

#OTA
TARGET_OTA_ASSERT_DEVICE := hi6210sft,ALE-L21,hwALE,cherryk,CHM-U01,CHC-U01,chm-u01.chc-u01,che-l11,CHE-l11

# enable to use the CPUSETS feature
ENABLE_CPUSETS := true

BOARD_SEPOLICY_DIRS := device/huawei/cherryk/sepolicy

ifeq ($(HOST_OS), linux)
ifeq ($(TARGET_SYSTEMIMAGES_USE_SQUASHFS), true)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := squashfs
endif
endif

