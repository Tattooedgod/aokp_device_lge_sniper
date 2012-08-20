# Release name
PRODUCT_RELEASE_NAME := Marquee

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/lge/sniper/full_sniper.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sniper
PRODUCT_NAME := aokp_sniper
PRODUCT_BRAND := Android
PRODUCT_MODEL := LG-SNIPER
PROUDCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone
