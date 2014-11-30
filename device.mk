# Copyright (C) 2013 The Android Open Source Project
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

$(call inherit-product, vendor/lenovo/a3/a3-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/

# This tab uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Screen size is "large" 7" tablet, density is "hdpi"
PRODUCT_AAPT_CONFIG := large hdpi

# This is a tablet
PRODUCT_CHARACTERISTICS := tablet

# prebuilt kernel modules
MOD_TGT := /system/lib/modules
MOD_SRC := $(LOCAL_PATH)/prebuilt/modules
PRODUCT_COPY_FILES += \
	$(MOD_SRC)/ccci.ko:$(MOD_TGT)/ccci.ko \
	$(MOD_SRC)/ccci_plat.ko:$(MOD_TGT)/ccci_plat.ko \
	$(MOD_SRC)/devapc.ko:$(MOD_TGT)/devapc.ko \
	$(MOD_SRC)/devinfo.ko:$(MOD_TGT)/devinfo.ko \
	$(MOD_SRC)/mtk_fm_drv.ko:$(MOD_TGT)/mtk_fm_drv.ko \
	$(MOD_SRC)/mtk_hif_sdio.ko:$(MOD_TGT)/mtk_hif_sdio.ko \
	$(MOD_SRC)/mtk_stp_bt.ko:$(MOD_TGT)/mtk_stp_bt.ko \
	$(MOD_SRC)/mtk_stp_gps.ko:$(MOD_TGT)/mtk_stp_gps.ko \
	$(MOD_SRC)/mtk_stp_uart.ko:$(MOD_TGT)/mtk_stp_uart.ko \
	$(MOD_SRC)/mtk_stp_wmt.ko:$(MOD_TGT)/mtk_stp_wmt.ko \
	$(MOD_SRC)/mtk_wmt_wifi.ko:$(MOD_TGT)/mtk_wmt_wifi.ko \
	$(MOD_SRC)/mtklfb.ko:$(MOD_TGT)/mtklfb.ko \
	$(MOD_SRC)/pvrsrvkm.ko:$(MOD_TGT)/pvrsrvkm.ko \
	$(MOD_SRC)/scsi_tgt.ko:$(MOD_TGT)/scsi_tgt.ko \
	$(MOD_SRC)/scsi_wait_scan.ko:$(MOD_TGT)/scsi_wait_scan.ko \
	$(MOD_SRC)/sec.ko:$(MOD_TGT)/sec.ko \
	$(MOD_SRC)/vcodec_kernel_driver.ko:$(MOD_TGT)/vcodec_kernel_driver.ko \
	$(MOD_SRC)/wlan_mt6628.ko:$(MOD_TGT)/wlan_mt6628.ko

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/fstab.mt8389:root/fstab.mt8389 \
	$(LOCAL_PATH)/root/init.mt8389.rc:root/init.mt8389.rc \
	$(LOCAL_PATH)/root/init.modem.rc:root/init.modem.rc \
	$(LOCAL_PATH)/root/init.protect.rc:root/init.protect.rc \
	$(LOCAL_PATH)/root/init.mt8389.usb.rc:/root/init.mt8389.usb.rc \
	$(LOCAL_PATH)/root/ueventd.mt8389.rc:root/ueventd.mt8389.rc \
	$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# TWRP, y u no create /tmp?
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profile.xml

PRODUCT_PROPERTY_OVERRIDES := \
	fmradio.driver.chip=3 \
	gps.solution.combo.chip=1 \
	mediatek.wlan.chip=MT6628 \
	mediatek.wlan.ctia=0 \
	mediatek.wlan.module.postfix=_mt6628 \
	persist.mtk.wcn.combo.chipid=0x6628 \
	persist.radio.fd.counter=15 \
	persist.radio.fd.off.counter=5 \
	persist.radio.fd.off.r8.counter=5 \
	persist.radio.fd.r8.counter=15 \
	persist.sys.usb.config=adb \
	ril.current.share_modem=2 \
	ril.external.md=0 \
	ril.first.md=1 \
	ril.flightmode.poweroffMD=1 \
	ril.radiooff.poweroffMD=0 \
	ril.specific.sm_cause=0 \
	ril.telephony.mode=1 \
	rild.libpath=/system/lib/mtk-ril.so \
	ro.gemini.smart_3g_switch=1 \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.gemini_support=true \
	ro.mediatek.platform=MT6589 \
	ro.mediatek.version.branch=ALPS.JB2.MP \
	ro.mediatek.version.release=ALPS.JB2.MP.V1.2 \
	ro.mediatek.version.sdk=1 \
	ro.mediatek.wlan.p2p=1 \
	ro.mediatek.wlan.wsc=1 \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=160 \
	ro.telephony.ril_class=MediaTekRIL \
	wifi.direct.interface=p2p0 \
	wifi.interface=wlan0 \
	wifi.tethering.interface=ap0

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	gsm0710muxd

# audio
PRODUCT_PACKAGES += \
	audio.r_submix.default \
	audio.a2dp.default \
	libblisrc
# wifi
PRODUCT_PACKAGES += \
	lib_driver_cmd_mtk

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
