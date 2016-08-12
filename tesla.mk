# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/tesla_libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tesla_libra
PRODUCT_BRAND := Xiaomi
TARGET_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=libra

# Assert
TARGET_OTA_ASSERT_DEVICE := libra,aqua

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=libra \
PRIVATE_BUILD_DESC="libra-user 6.0.1 LMY47V V7.2.3.0.LXKCNDA release-keys" \
BUILD_FINGERPRINT=Xiaomi/libra/libra:6.0.1/LMY47V/V7.2.3.0.LXKCNDA:user/release-keys
