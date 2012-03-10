
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from maguro device
$(call inherit-product, device/samsung/maguro/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
