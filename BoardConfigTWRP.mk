# Recovery
RECOVERY_VARIANT := twrp

# TWRP-Specific
TW_THEME := portrait_hdpi
# original path was /sys/devices/soc/c900000.qcom,mdss_mdp/c900000.qcom,mdss_mdp:qcom,mdss_fb_primary/leds/lcd-backlight/brightness
#TW_BRIGHTNESS_PATH := "/sys/devices/soc/c900000.qcom\x2mdss_mdp/c900000.qcom\x2mdss_mdp:qcom\x2mdss_fb_primary/leds/lcd-backlight/brightness"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd hwservicemanager servicemanager keymaster-3-0
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TW_USE_TOOLBOX := true

# Correct time
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULE := tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata

# Remove cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# Extra configurations
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true
#TW_SCREEN_BLANK_ON_BOOT := true
#TW_NO_SCREEN_BLANK := true

# Log
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
