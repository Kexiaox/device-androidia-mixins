# Install Native Bridge
WITH_NATIVE_BRIDGE := true

# Enable ARM codegen for x86 with Native Bridge
BUILD_ARM_FOR_X86 := true

# Native Bridge ABI List
NB_ABI_LIST_32_BIT := armeabi-v7a armeabi
NB_ABI_LIST_64_BIT := arm64-v8a
# Support 64 Bit Apps
TARGET_CPU_ABI_LIST_64_BIT ?= $(TARGET_CPU_ABI) $(TARGET_CPU_ABI2)
TARGET_CPU_ABI_LIST_32_BIT ?= $(TARGET_2ND_CPU_ABI) $(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := \
    $(TARGET_CPU_ABI_LIST_64_BIT) \
    $(TARGET_CPU_ABI_LIST_32_BIT) \
    $(NB_ABI_LIST_64_BIT) \
    $(NB_ABI_LIST_32_BIT)
TARGET_CPU_ABI_LIST_32_BIT += $(NB_ABI_LIST_32_BIT)
TARGET_CPU_ABI_LIST_64_BIT += $(NB_ABI_LIST_64_BIT)
