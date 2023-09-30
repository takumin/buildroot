################################################################################
#
# yelp-xsl
#
################################################################################

YELP_XSL_VERSION_MAJOR = 42
YELP_XSL_VERSION = $(YELP_XSL_VERSION_MAJOR).1
YELP_XSL_SOURCE = yelp-xsl-$(YELP_XSL_VERSION).tar.xz
YELP_XSL_SITE = https://download.gnome.org/sources/yelp-xsl/$(YELP_XSL_VERSION_MAJOR)
YELP_XSL_LICENSE = GPL-2.0 LGPL-2.1
YELP_XSL_LICENSE_FILES = COPYING COPYING.GPL COPYING.LGPL
YELP_XSL_CPE_ID_VENDOR = gnome
HOST_YELP_XSL_DEPENDENCIES = host-itstool host-libxml2 host-libxslt host-pkgconf

$(eval $(host-autotools-package))
