LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),RE58BC)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
