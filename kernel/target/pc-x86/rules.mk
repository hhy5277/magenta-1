# Copyright 2016 The Fuchsia Authors
# Copyright (c) 2008-2015 Travis Geiselbrecht
#
# Use of this source code is governed by a MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

PLATFORM := pc

MODULE_SRCS += $(LOCAL_DIR)/config.c

MODULE_DEPS += \
    kernel/dev/intel_rng

include make/module.mk

# build MDI
MDI_SRCS := \
    $(LOCAL_DIR)/pc.mdi \

MDI_INCLUDES := \
    kernel/include/mdi/kernel-defs.mdi \
    system/ulib/ddk/include/mdi/platform-defs.mdi \

include make/mdi.mk
