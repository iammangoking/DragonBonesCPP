LOCAL_PATH := $(call my-dir)/..

# ================ import libprotobuf.a ================
include $(CLEAR_VARS)

# lib name
LOCAL_MODULE    := dragonbones_cocos2dx2_static
# .a path
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilt/libdragonbones-cocos2dx2.a

LOCAL_CPPFLAGS := -fexceptions -std=c++11 -frtti

LOCAL_EXPORT_CPPFLAGS := -fexceptions -std=c++11 -frtti

# 賦值給NDK編譯系統
LOCAL_EXPORT_C_INCLUDES := \
						$(LOCAL_PATH)/renderer/cocos2d-x-2.x \
						$(LOCAL_PATH)/dragonbones \
						$(LOCAL_PATH)/dragonbones/animation \
						$(LOCAL_PATH)/dragonbones/core \
						$(LOCAL_PATH)/dragonbones/display \
						$(LOCAL_PATH)/dragonbones/events \
						$(LOCAL_PATH)/dragonbones/factories \
						$(LOCAL_PATH)/dragonbones/objects \
						$(LOCAL_PATH)/dragonbones/textures \
						$(LOCAL_PATH)/dragonbones/utils \

NDK_TOOLCHAIN_VERSION := 4.8

include $(PREBUILT_STATIC_LIBRARY)

