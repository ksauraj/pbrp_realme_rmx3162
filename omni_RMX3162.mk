#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
#$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from RMX3162 device
$(call inherit-product, device/realme/RMX3162/device.mk)

PRODUCT_DEVICE := RMX3162
PRODUCT_NAME := omni_RMX3162
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3162
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k6833v1_64-user 12 SP1A.210812.016 1660669277319 release-keys"

BUILD_FINGERPRINT := oplus/RMX3162/ossi:12/SP1A.210812.016/1660669277319:user/release-keys
