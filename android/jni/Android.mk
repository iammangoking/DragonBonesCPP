LOCAL_PATH := $(call my-dir)/../..

include $(CLEAR_VARS)

LOCAL_MODULE := dragonbones_cocos2dx2_static

LOCAL_MODULE_FILENAME := libdragonbones-cocos2dx2

LOCAL_SRC_FILES := \
				./renderer/cocos2d-x-2.x/CCDragonBones.cpp \
				./renderer/cocos2d-x-2.x/Cocos2dxAtlasNode.cpp \
				./renderer/cocos2d-x-2.x/Cocos2dxDisplayBridge.cpp \
				./renderer/cocos2d-x-2.x/Cocos2dxFactory.cpp \
				./renderer/cocos2d-x-2.x/Cocos2dxTextureAtlas.cpp \
				./dragonbones/Armature.cpp \
				./dragonbones/Bone.cpp \
				./dragonbones/Slot.cpp \
				./dragonbones/animation/Animation.cpp \
				./dragonbones/animation/AnimationState.cpp \
				./dragonbones/animation/TimelineState.cpp \
				./dragonbones/core/DBObject.cpp \
				./dragonbones/core/DragonBones.cpp \
				./dragonbones/events/AnimationEvent.cpp \
				./dragonbones/events/ArmatureEvent.cpp \
				./dragonbones/events/Event.cpp \
				./dragonbones/events/FrameEvent.cpp \
				./dragonbones/events/SoundEvent.cpp \
				./dragonbones/events/SoundEventManager.cpp \
				./dragonbones/factories/BaseFactory.cpp \
				./dragonbones/objects/dbtinyxml2.cpp \
				./dragonbones/objects/DisplayData.cpp \
				./dragonbones/objects/TransformTimeline.cpp \
				./dragonbones/objects/XMLDataParser.cpp \
				./dragonbones/utils/BytesType.cpp \
				./dragonbones/utils/ConstValues.cpp \
				./dragonbones/utils/DBDataUtil.cpp \
				./dragonbones/utils/DBGeometry.cpp \
				./dragonbones/utils/TransformUtil.cpp \

# TODO(hejiangzhou): Shall we disable exception?
LOCAL_CPPFLAGS := -fexceptions -std=c++11 -frtti

LOCAL_EXPORT_CPPFLAGS := -fexceptions -std=c++11 -frtti

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

LOCAL_C_INCLUDES := \
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

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static

NDK_TOOLCHAIN_VERSION := 4.8

include $(BUILD_STATIC_LIBRARY)

$(call import-module,cocos2dx)
