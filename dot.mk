#
# Copyright (C) 2018 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := D2

# Inherit build target
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Dot OS stuff
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit from whyred device
$(call inherit-product, device/10or/D2/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := dot_D2
PRODUCT_DEVICE := D2
PRODUCT_MANUFACTURER := 10or
PRODUCT_BRAND := 10or
PRODUCT_FULL_TREBLE_OVERRIDE := true

TARGET_VENDOR_PRODUCT_NAME := D2
TARGET_VENDOR_DEVICE_NAME := D2
PRODUCT_GMS_CLIENTID_BASE := android-huaqin
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="D2-user 8.1.0 OPM1.171019.019 10or_D2_V1_0_50 release-keys" \
	TARGET_DEVICE="D2" \
	PRODUCT_NAME="D2"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 10or/D2/D2:8.1.0/OPM1.171019.019/10or_D2_V1_0_50:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model
