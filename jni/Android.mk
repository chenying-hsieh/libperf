LOCAL_PATH := $(call my-dir)

# This is for snapdragon
#SDCLANG := false

LIB=./lib

include $(CLEAR_VARS)
LOCAL_MULTILIB := 32
LOCAL_ARM_MODE := arm
LOCAL_MODULE    := libperf_example
LOCAL_SRC_FILES := \
    libperf.c libperf_example.c
LOCAL_C_INCLUDES += \
    ./include
LOCAL_LDLIBS := -L$(LIB)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MULTILIB := 32
LOCAL_ARM_MODE := arm
LOCAL_MODULE    := libperf_test
LOCAL_SRC_FILES := \
    libperf.c libperf_test.c
LOCAL_C_INCLUDES += \
    ./include
LOCAL_LDLIBS := -L$(LIB)
include $(BUILD_EXECUTABLE)
