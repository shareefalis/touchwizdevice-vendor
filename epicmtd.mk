#
# Copyright (C) 2011 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.


DEVICE_PACKAGE_OVERLAYS := device/samsung/epicmtd/overlay


# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
    device/samsung/epicmtd/prebuilt/etc/asound.conf:system/etc/asound.conf \
    device/samsung/epicmtd/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/samsung/epicmtd/prebuilt/etc/egl.cfg:system/lib/egl/egl.cfg

# Init files
PRODUCT_COPY_FILES += \
  device/samsung/epicmtd/init:root/init \
  device/samsung/epicmtd/init.rc:root/init.rc \
  device/samsung/epicmtd/ueventd.rc:root/ueventd.rc \
  device/samsung/epicmtd/lpm.rc:root/lpm.rc

# kernel modules for ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/epicmtd/modules,root/lib/modules)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/epicmtd/modules,recovery/root/lib/modules)

# WiFi
PRODUCT_COPY_FILES += \
     device/samsung/epicmtd/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Keylayout and Keychars
PRODUCT_COPY_FILES += \
     device/samsung/epicmtd/prebuilt/usr/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/aries-keypad.kl:system/usr/keylayout/aries-keypad.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/melfas_touchkey.kl:system/usr/keylayout/melfas_touchkey.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     device/samsung/epicmtd/prebuilt/usr/keylayout/Broadcom_Bluetooth_HID.kl:system/usr/keylayout/Broadcom_Bluetooth_HID.kl \
     device/samsung/epicmtd/prebuilt/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin:system/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin \
     device/samsung/epicmtd/prebuilt/usr/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
     device/samsung/epicmtd/prebuilt/usr/keychars/melfas_touchkey.kcm.bin:system/usr/keychars/melfas_touchkey.kcm.bin \
     device/samsung/epicmtd/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
     device/samsung/epicmtd/prebuilt/usr/keychars/aries-keypad.kcm.bin:system/usr/keychars/aries-keypad.kcm.bin \
     device/samsung/epicmtd/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin


# Generated kcm keymaps
PRODUCT_PACKAGES := \
    cypress-touchkey.kcm \
    s3c-keypad.kcm

# These are the OpenMAX IL configuration files
PRODUCT_COPY_FILES += \
	device/samsung/epicmtd/sec_mm/sec_omx/sec_omx_core/secomxregistry:system/etc/secomxregistry \
	device/samsung/epicmtd/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# These are the OpenMAX IL modules
PRODUCT_PACKAGES += \
    libSEC_OMX_Core.s5pc110 \
    libOMX.SEC.AVC.Decoder.s5pc110 \
    libOMX.SEC.M4V.Decoder.s5pc110 \
    libOMX.SEC.M4V.Encoder.s5pc110 \
    libOMX.SEC.AVC.Encoder.s5pc110

# Libs
PRODUCT_PACKAGES += \
    libstagefrighthw \
    overlay.s5pc110

# update utilities
PRODUCT_PACKAGES += \
	bml_over_mtd \
	setup_fs

# Camera
PRODUCT_PACKAGES += \
    libs3cjpeg
# tvout 
PRODUCT_PACKAGES += \
	tvouthack
# apns config file
PRODUCT_COPY_FILES += \
        device/samsung/epicmtd/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# Device-specific packages
	PRODUCT_PACKAGES += \
	EpicParts

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=eth0,ppp0 \
    ro.telephony.ril_class=samsung \
    ro.ril.samsung_cdma=true

# WiMAX Property setting for checking WiMAX interface
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.wimax.interface=uwbr0

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=20 \
       dalvik.vm.heapsize=32m

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# We are using a prebuilt kernel for now, to ease building. This will be changed later.
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/epicmtd/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/samsung/epicmtd/recovery.bin:recovery.bin

# copy the filesystem converter
PRODUCT_COPY_FILES += \
  device/samsung/epicmtd/updater.sh:updater.sh

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/epicmtd/epicmtd-vendor.mk)
