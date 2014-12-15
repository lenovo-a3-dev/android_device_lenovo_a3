# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit device configuration
$(call inherit-product, device/lenovo/A3000/full_A3000.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600


# Overrides for CM
PRODUCT_NAME := cm_A3000
PRODUCT_DEVICE := A3000
PRODUCT_RELEASE_NAME := LenovoA3000-H

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=LenovoA3000-H \
    TARGET_DEVICE=A3000 \
    BUILD_FINGERPRINT="Lenovo/LenovoA3000-H/A3000:4.2.2/JDQ39/A3000_A422_011_022_140127_WW_C:user/release-keys" \
    PRIVATE_BUILD_DESC="a3000_row_call-user 4.2.2 JDQ39 147 release-keys"
