#
# Copyright (C) 2023 LibreMobileOS Foundation
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/daria/zahedan-unified/device.mk)

PRODUCT_PACKAGES += \
    SettingsProviderOverlayZahedan

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
# To include Gapps 
WITH_GMS := true

# To Build Google(Dailer, Message, Phone) and BCR
WITH_GMS_COMMS_SUITE := true

# To Add cinematic wallpaer support (only supported in gapps build not in vanilla remove this flag for vanilla builds)
TARGET_SUPPORTS_WALLEFFECT := true

#Some more GMS Flag
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true

PRODUCT_NAME := lineage_zahedan
PRODUCT_DEVICE := zahedan
PRODUCT_MANUFACTURER := Daria
PRODUCT_BRAND := Daria
PRODUCT_MODEL := DM-B50104

PRODUCT_SYSTEM_NAME := zahedan

BUILD_FINGERPRINT := Daria/zahedan/zahedan:13/TQ2A.230505.002/V4.43.1.1.BOND:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-jimi
