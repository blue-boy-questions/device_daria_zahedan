#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/daria/zahedan-unified/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Lunch banner maintainer variable
RISING_MAINTAINER="Itis_Sajjad"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="MediaTek Dimensity 7050" \
    RisingMaintainer="Itis_Sajjad"

RISING_MAINTAINER := Itis_Sajjad

TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
PRODUCT_NAME := lineage_algiz
PRODUCT_DEVICE := algiz
PRODUCT_MANUFACTURER := Volla
PRODUCT_BRAND := volla
PRODUCT_MODEL := Volla Phone Quintus

# Build info
PRODUCT_SYSTEM_NAME := algiz
