Lenovo IdeaTab S6000H ('s6')
============================

This project supports building AOSP-based custom ROMs and recoveries for the Lenovo S6000 tablet device. It was originally a fork from the Lenovo A3000H device tree, created by [lenovo-s6-dev](https://github.com/lenovo-s6-dev).

Basic   | Technical Specifications
-------:|:-------------------------
Chipset | Mediatek MT8389
CPU     | Quad-core 1.2 GHz Cortex-A7
GPU     | PowerVR SGX544
Memory  | 1GB RAM
Stock Android version | 4.2.2
Storage | 16 GB
Battery | 3500 mAh
Display | 7" 1024x600 px
Rear camera  | 5 MPx

# Retrieving the source code
Please follow CyanogenMod or the AOSP's official tutorial on obtaining the Android source tree before you continue

Using either `git clone` or by adding this repository to your source tree's repo manifest, place this project, relative to the root of the source, in `device/lenovo/s6000`, like so:

```
cd <aosp>
git clone https://github.com/georgewhite5/device_lenovo_s6000 device/lenovo/s6000
```

Where `<aosp>` is the path to the source tree for your AOSP-based ROM project.
