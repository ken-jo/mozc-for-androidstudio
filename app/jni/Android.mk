TARGET_ARCH_ABI := armeabi-v7a x86_64
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := mozc
LOCAL_SRC_FILES := $(TARGET_ARCH_ABI)/libmozc.so
LOCAL_LDFLAGS := -Wl,-s,--version-script,../../libmozc.lds
LOCAL_LDLIBS := -llog
include $(PRE_BUILD_SHARED_LIBRARY)
