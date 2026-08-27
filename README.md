# Proprietary Vendor Blobs for Allwinner H618 (Apollo P2 / Orange Pi Zero 2W)

This repository contains prebuilt proprietary firmware blobs, out-of-tree kernel modules, and graphics acceleration libraries required for LineageOS 23.2 on Allwinner H618 devices.

---

## 1. Wi-Fi & Bluetooth Firmware Blobs
- **Source**: Extracted directly from stock vendor firmware images.
- **Files**:
  - `proprietary/firmware/uwe5622/wcnmodem.bin` -> `/vendor/etc/firmware/uwe5622/wcnmodem.bin`
  - `proprietary/firmware/uwe5622/wifi_2355b001_1ant.ini` -> `/vendor/etc/firmware/uwe5622/wifi_2355b001_1ant.ini`

---

## 2. Wi-Fi & Bluetooth Kernel Modules (Unisoc UWE5622)
- **Source**: Built from the Armbian UWE5622 out-of-tree driver repository:
  - Repository: [https://github.com/armbian/uwe5622](https://github.com/armbian/uwe5622)
- **Build Instructions**:
  - Build against the target Linux 6.x kernel tree with firmware path configured to `/vendor/etc/firmware/uwe5622`.
- **Modules**:
  - `proprietary/modules/uwe5622_bsp_sdio.ko`
  - `proprietary/modules/sprdwl_ng.ko`
  - `proprietary/modules/sprdbt_tty.ko`

---

## 3. Mesa3D Panfrost (Mali-G31) Graphics Acceleration Prebuilts
- **Source**: Built out-of-tree using the standalone cross-compilation pipeline script:
  - Gist: [https://gist.github.com/YAJATapps/5c84e42a097646dcf497dcad9801fa8e](https://gist.github.com/YAJATapps/5c84e42a097646dcf497dcad9801fa8e)
- **Components**:
  - `libgallium_dri.so`: Gallium Panfrost driver (`/vendor/lib64/libgallium_dri.so`)
  - `libgbm_mesa.so` / `dri_gbm.so`: Mesa GBM buffer allocation backends
  - `libEGL.so`, `libGLESv1_CM.so`, `libGLESv2.so`: OpenGL ES 1.1 / 2.0 / 3.1 drivers (`/vendor/lib64/egl/`)
