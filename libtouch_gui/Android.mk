LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBTOUCH_GUI_VERSION := 1.30

LOCAL_CFLAGS += -DPHILZ_TOUCH_RECOVERY
LOCAL_CFLAGS += -DLIBTOUCH_GUI_VERSION="$(LIBTOUCH_GUI_VERSION)"

LOCAL_SRC_FILES := touch_gui.c gui_settings.c nandroid_gui.c

LOCAL_MODULE := libtouch_gui

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/.. \
    system/core/fs_mgr/include \
    system/extras/ext4_utils

# includes from recovery/voldclient
LOCAL_C_INCLUDES += \
    system/core/include \
    system/core/libcutils \
    system/vold

LOCAL_MODULE_TAGS := eng

include $(BUILD_STATIC_LIBRARY)
