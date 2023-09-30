################################################################################
#
# yelp-tools
#
################################################################################

YELP_TOOLS_VERSION_MAJOR = 42
YELP_TOOLS_VERSION = $(YELP_TOOLS_VERSION_MAJOR).1
YELP_TOOLS_SOURCE = yelp-tools-$(YELP_TOOLS_VERSION).tar.xz
YELP_TOOLS_SITE = https://download.gnome.org/sources/yelp-tools/$(YELP_TOOLS_VERSION_MAJOR)
YELP_TOOLS_LICENSE = GPL-2.0
YELP_TOOLS_LICENSE_FILES = COPYING COPYING.GPL
YELP_TOOLS_CPE_ID_VENDOR = gnome
HOST_YELP_TOOLS_DEPENDENCIES = \
	host-python3 \
	host-python-lxml \
	host-itstool \
	host-libxml2 \
	host-libxslt \
	host-pkgconf \
	host-yelp-xsl

$(eval $(host-meson-package))
