ARCHS = armv7s arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = noforcedentry
noforcedentry_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

