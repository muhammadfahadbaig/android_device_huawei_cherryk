#
# Inherit the full_base and device configurations
$(call inherit-product, device/huawei/cherryk/device.mk)
$(call inherit-product, device/huawei/cherryk/vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Overrides
PRODUCT_NAME := cherryk
PRODUCT_DEVICE := cherryk
PRODUCT_MODEL := Honor 4C/4X Kirin
