# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

PRODUCT_PACKAGES := \
    AlarmClock \
    AlarmProvider \
    Calendar \
    Camera \
    DrmProvider \
    LatinIME \
    Mms \
    Music \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SubscribedFeedsProvider \
    SyncProvider

$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Overrides
PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := generic

PRODUCT_COPY_FILES := \
	vendor/apple/firmware/sd8686.bin:system/etc/firmware/sd8686.bin \
	vendor/apple/firmware/sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	vendor/apple/firmware/zephyr_main.bin:system/etc/firmware/zephyr_main.bin \
	vendor/apple/firmware/zephyr_aspeed.bin:system/etc/firmware/zephyr_aspeed.bin \
	vendor/apple/asound.conf:system/etc/asound.conf \
	vendor/apple/asound.state:system/etc/asound.state \
	vendor/apple/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
