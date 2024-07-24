#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mondrian device
$(call inherit-product, device/xiaomi/mondrian/device.mk)

# Inherit from common TheParasiteProject configuration.
TARGET_DISABLE_EPPE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_GBOARD_KEY_HEIGHT := 1.2
TARGET_EEA_V2_DEVICE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440

TARGET_USES_AOSP_RECOVERY := true

PRODUCT_NAME := aosp_mondrian
PRODUCT_DEVICE := mondrian
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F5 Pro

PRODUCT_SYSTEM_NAME := mondrian_eea
PRODUCT_SYSTEM_DEVICE := mondrian

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mondrian_eea-user 14 UKQ1.230804.001 V816.0.5.0.UMNEUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/mondrian_eea/mondrian:14/UKQ1.230804.001/V816.0.5.0.UMNEUXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-google
