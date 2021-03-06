# Release name
PRODUCT_RELEASE_NAME := Nexus7


# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Enhanced NFC
$(call inherit-product, vendor/aicp/configs/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := aicp_grouper
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:5.0/LRX21P/1570855:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 5.0 LRX21P 1570855 release-keys"


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
-include vendor/aicp/configs/bootanimation.mk
