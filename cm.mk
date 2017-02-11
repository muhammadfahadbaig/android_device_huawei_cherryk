# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hi6210sft device
$(call inherit-product, device/huawei/cherryk/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_cherryk
PRODUCT_DEVICE := cherryk
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BRAND := Honor
PRODUCT_GMS_CLIENTID_BASE := android-huawei
#PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=hwALE-H \
    ro.product.model=ALE-L21 \
    ro.product.name=ALE-L21 \
    ro.build.id=HuaweiALE-L21

TARGET_VENDOR_PRODUCT_NAME := cherryk
TARGET_VENDOR_DEVICE_NAME := cherryk

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="hi6210sft/hi6210sft/hi6210sft:6.0/MRA58K/jenkins06271131:user/test-keys" \
    PRODUCT_MODEL="cherryk"

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_DISPLAY_ID='rr_cherryk-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) test-keys' \
	TARGET_BUILD_FLAVOR=rr_cherryk-userdebug