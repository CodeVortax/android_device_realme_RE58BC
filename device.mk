DEVICE_PATH := device/realme/RE58BC
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
PRODUCT_SHIPPING_API_LEVEL := 33
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_VIRTUAL_AB_OTA := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
AB_OTA_UPDATER := true

$(call inherit-product-if-exists, vendor/realme/RE58BC/RE58BC-vendor.mk)

# Display
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_DENSITY := 320
PRODUCT_PRODUCT_PROPERTIES += ro.sf.lcd_density=320

# First-stage / vendor ramdisk files
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor_ramdisk/fstab.ums9230_hulk:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.ums9230_hulk \
    $(DEVICE_PATH)/rootdir/vendor_ramdisk/ueventd.ums9230_hulk.rc:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/ueventd.ums9230_hulk.rc \
    $(DEVICE_PATH)/rootdir/vendor_ramdisk/init.recovery.common.rc:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/init.recovery.common.rc

# Overlays
PRODUCT_PACKAGES += FrameworksOverlayRE58BC

# A/B
PRODUCT_PACKAGES += update_engine update_engine_sideload update_verifier checkpoint_gc otapreopt_script
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true
