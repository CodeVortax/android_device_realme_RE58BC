$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, device/realme/RE58BC/device.mk)

# Evolution X common
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_RE58BC
PRODUCT_DEVICE := RE58BC
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3830
PRODUCT_MANUFACTURER := realme
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Evolution X flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RE58BC-user 15 AP3A.240905.015.A2 T.R4T2.1784276736 release-keys" \
    BuildFingerprint=realme/RMX3830/RE58BC:15/AP3A.240905.015.A2/T.R4T2.1784276736:user/release-keys
