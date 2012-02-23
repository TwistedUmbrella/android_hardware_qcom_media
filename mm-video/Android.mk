OMX_VIDEO_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(BUILD_TINY_ANDROID),true)
ifeq ($(BUILD_QCOM_LEGACY),true)

ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
    include $(OMX_VIDEO_PATH)/vidc/vdec/Android.mk
    include $(OMX_VIDEO_PATH)/vidc/venc/Android.mk
endif

ifeq ($(TARGET_BOARD_PLATFORM),qsd8k)
#    include $(OMX_VIDEO_PATH)/qdsp6/vdec/Android.mk
    include $(OMX_VIDEO_PATH)/qdsp6/venc/Android.mk
endif

endif
endif #BUILD_TINY_ANDROID
