#
# Copyright (C) 2016 The CyanogenMod Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

include kernel/xiaomi/gemini/AndroidKernel.mk

ifneq ($(filter gemini,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

# Create a link for the WCNSS config file
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/qca_cld; \
    ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
	    $(TARGET_OUT)/etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini; \
    ln -sf /persist/wlan_mac.bin \
	    $(TARGET_OUT_ETC)/firmware/wlan/qca_cld/wlan_mac.bin; \
    ln -sf /dev/block/bootdevice/by-name/msadp \
	    $(TARGET_OUT_ETC)/firmware/msadp)

# Create symlinks for misc devices
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9320; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
	    $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_anc.bin; \
    ln -sf /data/misc/audio/wcd9320_mad_audio.bin \
	    $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_mad_audio.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
	    $(TARGET_OUT_ETC)/firmware/wcd9320/mbhc.bin; \
    mkdir -p  $(TARGET_OUT)/rfs/apq/gnss/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/apq/gnss/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/apq/gnss; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/apq/gnss/hlos; \
    ln -sf /data/tombstones/modem \
	    $(TARGET_OUT)/rfs/apq/gnss/ramdumps; \
    ln -sf /persist/rfs/apq/gnss \
	    $(TARGET_OUT)/rfs/apq/gnss/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/apq/gnss/shared; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/adsp/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/mdm/adsp/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/adsp; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/adsp/hlos; \
    ln -sf /data/tombstones/lpass \
	    $(TARGET_OUT)/rfs/mdm/adsp/ramdumps; \
    ln -sf /persist/rfs/mdm/adsp \
	    $(TARGET_OUT)/rfs/mdm/adsp/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/adsp/shared; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/mpss/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/mdm/mpss/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/mpss; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/mpss/hlos; \
    ln -sf /data/tombstones/modem \
	    $(TARGET_OUT)/rfs/mdm/mpss/ramdumps; \
    ln -sf /persist/rfs/mdm/mpss \
	    $(TARGET_OUT)/rfs/mdm/mpss/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/mpss/shared; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/mdm/sparrow/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/sparrow/hlos; \
    ln -sf /data/tombstones/sparrow \
	    $(TARGET_OUT)/rfs/mdm/sparrow/ramdumps; \
    ln -sf /persist/rfs/mdm/sparrow \
	    $(TARGET_OUT)/rfs/mdm/sparrow/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/mdm/sparrow/shared; \
    mkdir -p $(TARGET_OUT)/rfs/msm/adsp/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/msm/adsp/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/msm/adsp; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/msm/adsp/hlos; \
    ln -sf /data/tombstones/lpass \
	    $(TARGET_OUT)/rfs/msm/adsp/ramdumps; \
    ln -sf /persist/rfs/msm/adsp \
	    $(TARGET_OUT)/rfs/msm/adsp/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/msm/adsp/shared; \
    mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly; \
    ln -sf /firmware \
	    $(TARGET_OUT)/rfs/msm/mpss/readonly/firmware; \
    mkdir -p $(TARGET_OUT)/rfs/msm/mpss; \
    ln -sf /persist/hlos_rfs/shared \
	    $(TARGET_OUT)/rfs/msm/mpss/hlos; \
    ln -sf /data/tombstones/modem \
	    $(TARGET_OUT)/rfs/msm/mpss/ramdumps; \
    ln -sf /persist/rfs/msm/mpss \
	    $(TARGET_OUT)/rfs/msm/mpss/readwrite; \
    ln -sf /persist/rfs/shared \
	    $(TARGET_OUT)/rfs/msm/mpss/shared;)

endif
