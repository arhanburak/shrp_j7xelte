LOCAL_PATH := device/samsung/j7xelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/prebuilt/Image:kernel \
     $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
     $(LOCAL_PATH)/prebuilt/dt.img:boot.img

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_j7xelte
PRODUCT_DEVICE := j7xelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := Samsung Galaxy J7 2016
