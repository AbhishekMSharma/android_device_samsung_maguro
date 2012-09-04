# name
PRODUCT_RELEASE_NAME := GN-GSM

# device
$(call inherit-product-if-exists, device/samsung/maguro/full_maguro.mk)

# gsm
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# nfc
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# products
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.maguro.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=398337 \
    PRODUCT_NAME=yakju \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys" \
    BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys"
