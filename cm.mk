## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := i5s

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/iPhone/i5s/device_i5s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i5s
PRODUCT_NAME := cm_i5s
PRODUCT_BRAND := iPhone
PRODUCT_MODEL := i5s
PRODUCT_MANUFACTURER := ALPS
