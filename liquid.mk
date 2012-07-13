# gsm
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# device
$(call inherit-product-if-exists, device/samsung/maguro/full_maguro.mk)

# products
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_NAME := liquid_maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=liquid.maguro.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_ID=IMM76I \
#    BUILD_NUMBER=330937 \
#    PRODUCT_NAME=yakju \
#    TARGET_BUILD_TYPE=user \
#    BUILD_VERSION_TAGS=release-keys \
#    PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76I 330937 release-keys" \
#    BUILD_FINGERPRINT="google/yakju/maguro:4.0.4/IMM76I/330937:user/release-keys"

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/xhdpi/bootanimation.zip:system/media/bootanimation.zip
