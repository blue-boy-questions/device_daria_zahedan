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
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

PRODUCT_NAME := lmodroid_algiz
PRODUCT_DEVICE := algiz
PRODUCT_MANUFACTURER := Volla
PRODUCT_BRAND := volla
PRODUCT_MODEL := Volla Phone Quintus

# Build info
PRODUCT_SYSTEM_NAME := algiz
