#
# Copyright (C) 2023 LibreMobileOS Foundation
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    lineage_zahedan:$(LOCAL_DIR)/zahedan/lineage_zahedan.mk \
    lineage_algiz:$(LOCAL_DIR)/algiz/lineage_algiz.mk

COMMON_LUNCH_CHOICES := \
    lineage_zahedan-user \
    lineage_zahedan-userdebug \
    lineage_zahedan-eng \
    lineage_algiz-user \
    lineage_algiz-userdebug \
    lineage_algiz-eng
