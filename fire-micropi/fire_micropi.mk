# wing fpga product config

$(call inherit-product, device/softwinner/wing-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/fire-micropi/overlay

#PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/modules/modules/nand.ko:root/nand.ko \
	device/softwinner/fire-micropi/modules/modules/sun7i-ir.ko:root/sun7i-ir.ko \
	#device/softwinner/fire-micropi/modules/modules/disp.ko:root/disp.ko \
	#device/softwinner/fire-micropi/modules/modules/lcd.ko:root/lcd.ko \
	#device/softwinner/fire-micropi/modules/modules/hdmi.ko:root/hdmi.ko \

PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/recovery.fstab:recovery.fstab
#	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/ueventd.sun7i.rc:root/ueventd.sun7i.rc \
	device/softwinner/fire-micropi/init.sun7i.rc:root/init.sun7i.rc \
	device/softwinner/fire-micropi/init.sun7i.usb.rc:root/init.sun7i.usb.rc \
	device/softwinner/fire-micropi/init/init.sda.rc:root/init.sda.rc \
	device/softwinner/fire-micropi/init/init.sdb.rc:root/init.sdb.rc \
	device/softwinner/fire-micropi/init/init.sdc.rc:root/init.sdc.rc \
	device/softwinner/fire-micropi/init/init.sdd.rc:root/init.sdd.rc \
	device/softwinner/fire-micropi/init/init.sde.rc:root/init.sde.rc \
	device/softwinner/fire-micropi/init.recovery.sun7i.rc:root/init.recovery.sun7i.rc \
	device/softwinner/fire-micropi/needfix.rle:root/needfix.rle \
	device/softwinner/fire-micropi/camera.cfg:system/etc/camera.cfg \
	device/softwinner/fire-micropi/media_profiles.xml:system/etc/media_profiles.xml

#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
	device/softwinner/fire-micropi/sun7i-ir.kl:system/usr/keylayout/sun7i-ir.kl \
	device/softwinner/fire-micropi/tp.idc:system/usr/idc/tp.idc \
	device/softwinner/fire-micropi/gsensor.cfg:system/usr/gsensor.cfg

#PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
	device/softwinner/fire-micropi/vold.fstab:system/etc/vold.fstab
	
PRODUCT_PACKAGES += \
	Bluetooth
#	TSCalibration2

# wifi & bt config file
PRODUCT_COPY_FILES += \
     system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf
#    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
#    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
#    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \

# rtl8723as bt fw and config
#PRODUCT_COPY_FILES += \
#	device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rlt8723a_chip_b_cut_bt40_fw.bin:system/etc/rlt8723a_chip_b_cut_bt40_fw.bin \
#	device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rtk8723_bt_config:system/etc/rtk8723_bt_config

# bcm40181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/bcm40181_nvram.txt:system/vendor/modules/bcm40181_nvram.txt

# bcm40183 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_p2p.bin:system/vendor/modules/fw_bcm40183b2_p2p.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_apsta.bin:system/vendor/modules/fw_bcm40183b2_apsta.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2.bin:system/vendor/modules/fw_bcm40183b2.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/bcm40183_nvram.txt:system/vendor/modules/bcm40183_nvram.txt

# ap6210 sdio wifi fw and nvram
PRODUCT_COPY_FILES += \
	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
	hardware/broadcom/wlan/firmware/ap6210/nvram_ap6210.txt:system/vendor/modules/nvram_ap6210.txt \
	hardware/broadcom/wlan/firmware/ap6210/bcm20710a1.hcd:system/vendor/modules/bcm20710a1.hcd \
	hardware/broadcom/wlan/firmware/ap6210/bd_addr.txt:system/etc/firmware/bd_addr.txt

	
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapsize=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=96m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=2m \
	dalvik.vm.heapmaxfree=8m \
	persist.sys.usb.config=mass_storage,adb \
	ro.property.tabletUI=true \
	ro.udisk.lable=sugar \
	ro.product.firmware=v3.0 \
	ro.sw.defaultlauncherpackage=com.softwinner.launcher \
	ro.sw.defaultlauncherclass=com.softwinner.launcher.Launcher \
	audio.output.active=AUDIO_HDMI \
	audio.input.active=AUDIO_CODEC \
	ro.audio.multi.output=true \
	ro.sw.directlypoweroff=true \
	ro.softmouse.left.code=6 \
    ro.softmouse.right.code=14 \
    ro.softmouse.top.code=67 \
    ro.softmouse.bottom.code=10 \
    ro.softmouse.leftbtn.code=2 \
    ro.softmouse.midbtn.code=-1 \
    ro.softmouse.rightbtn.code=-1 \
    ro.sw.shortpressleadshut=false \
    ro.sw.videotrimming=1 \
    persist.sys.ui.hw=true \
    persist.sys.device_name = MiniMax 

#$(call inherit-product-if-exists, device/softwinner/fire-micropi/modules/modules.mk)

PRODUCT_CHARACTERISTICS := manu

# Overrides
PRODUCT_BRAND  := fire
PRODUCT_NAME   := fire_micropi
PRODUCT_DEVICE := fire-micropi
PRODUCT_MODEL  := softfire

