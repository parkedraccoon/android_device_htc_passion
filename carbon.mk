# Call this first so apn list is actually copied
#$(call inherit-product, vendor/ev/config/gsm.mk)

$(call inherit-product, device/htc/passion/full_passion.mk)

$(call inherit-product, vendor/carbon/config/common_phone.mk)

#
# Setup device specific product configuration.
#

PRODUCT_RELEASE_NAME := NexusOne


PRODUCT_NAME    := carbon_passion
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := passion
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.passion.$(shell date +%m%d%y).$(shell date +%H%M%S)

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Perdo

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

PRODUCT_AAPT_CONFIG := normal hdpi
