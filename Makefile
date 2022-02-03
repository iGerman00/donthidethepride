TARGET := iphone:clang:latest:14.4
INSTALL_TARGET_PROCESSES = SpringBoard Bridge


include /var/theos/makefiles/common.mk

TWEAK_NAME = DontHideThePride

DontHideThePride_FILES = Tweak.xm
DontHideThePride_CFLAGS = -fobjc-arc

include /var/theos/makefiles/tweak.mk
