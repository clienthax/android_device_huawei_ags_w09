#
# Copyright (C) 2018 The LineageOS Project
#
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from huawei device
$(call inherit-product, device/huawei/ags_w09/device.mk)

PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := ags_w09
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := ags_w09
PRODUCT_NAME := lineage_ags_w09

PRODUCT_GMS_CLIENTID_BASE := android-ags-w09

TARGET_VENDOR_PRODUCT_NAME := ags_w09

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ags_w09" \
    PRODUCT_NAME="ags_w09" \
    PRIVATE_BUILD_DESC="ags_w09-user 7.1.2 N2G47H V9.2.6.0.NCCMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/rolex/rolex:7.1.2/N2G47H/V9.2.6.0.NCCMIEK:user/release-keys"
