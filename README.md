# Device tree for Huawei Ascent P6

This repository is the device tree for Huawei Ascent P6, the former leadership of Huawei in 2013, and also the first generation with Hisilicon SoC. It's a real milestone, so it deserves a new Android port.

<big>My target is Android 9.0!</big>

## Features

- Ready-to-use. Currently you can directly use it to build MoKee Pie.
- Not sure what can/cannot work if I build a ready-to-use ROM (I'm busy these days...).
- Includes a toolchain for building kernel.

## Dependencies

- hardware/ti/wlan

## How to Build

1. Download MoKee Pie source. [Follow this guide](https://github.com/MoKee/android/blob/mkp/README.mkdn).
2. Clone the [kernel source](https://github.com/AnClark/kernel-huawei-p6) into MoKee source's `kernel/hwp6_u06` folder, then checkout branch `mkp`.
3. Run the following commands in Omni source's root:
  ```
  source build/envsetup.sh
  lunch mk_hwp6_u06-userdebug
  mka bacon
  ```
4. When succeed, you will get the built flashable package as build system printed.

## NOTICE

Huawei P6 is an early leadership model, so it has an ancient kernel which **MUST BE BUILT WITH AN OLDER TOOLCHAIN**, or it will stuck at boot! But don't worry, the toolchain is well-prepared in this repo, so you needn't to configure yourself.

## Credits

This device tree is migrated from OmniROM Kitkat configuration maintained by @marlintoe.
