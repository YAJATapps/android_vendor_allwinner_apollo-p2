#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Namespaces for Soong prebuilts
PRODUCT_SOONG_NAMESPACES += \
    vendor/allwinner/apollo-p2

# Wi-Fi & Bluetooth Firmware
PRODUCT_COPY_FILES += \
    vendor/allwinner/apollo-p2/proprietary/firmware/uwe5622/wcnmodem.bin:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/uwe5622/wcnmodem.bin \
    vendor/allwinner/apollo-p2/proprietary/firmware/uwe5622/wifi_2355b001_1ant.ini:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/uwe5622/wifi_2355b001_1ant.ini

# Wi-Fi & Bluetooth Kernel Modules
PRODUCT_PACKAGES += \
    uwe5622_bsp_sdio.ko \
    sprdwl_ng.ko \
    sprdbt_tty.ko

# Mesa3D Panfrost / GLES / EGL / Vulkan Prebuilts
PRODUCT_PACKAGES += \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    libgallium_dri \
    libgbm_mesa \
    dri_gbm
#    vulkan.panfrost
