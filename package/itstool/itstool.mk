################################################################################
#
# itstool
#
################################################################################

ITSTOOL_VERSION = 2.0.7
ITSTOOL_SITE = $(call github,itstool,itstool,$(ITSTOOL_VERSION))
ITSTOOL_LICENSE = GPL-3.0+
ITSTOOL_LICENSE_FILES = COPYING COPYING.GPL3
HOST_ITSTOOL_DEPENDENCIES = host-python3 host-libxml2

ITSTOOL_AUTORECONF = YES

$(eval $(host-autotools-package))
