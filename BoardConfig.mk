# Copyright (C) 2010 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.  Similarly,
# we set USE_PROPRIETARY_AUDIO_EXTENSIONS to true in the proprietary variant as
# well.
USE_CAMERA_STUB := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := false

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.grouper

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/grouper

-include vendor/asus/grouper/BoardConfigVendor.mk
include device/asus/grouper/BoardConfigCommon.mk

TARGET_RECOVERY_FSTAB = device/asus/grouper/fstab.grouper

MALLOC_IMPL := dlmalloc

# Block_Build
Bliss_Build_Block := 1

# Blissiful building options
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
BLISS_STRICT := false
BLISS_KRAIT := false
BLISS_PIPE := false
FLOOP_NEST_OPTIMIZE := false
ENABLE_GCCONLY := false
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := false
FAST_MATH := true
ENABLE_MODULAR_O3 := false
ENABLE_LTO := false
Link_Time_Optimizations := true
TARGET_USE_ION_COMPAT := false
TARGET_USE_KRAIT_PLD_SET := false
TARGET_TC_ROM := 4.8-linaro
TARGET_TC_KERNEL := 4.8-linaro
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

#SaberMod
-include vendor/bliss/config/sm.mk
