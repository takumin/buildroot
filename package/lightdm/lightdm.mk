################################################################################
#
# lightdm
#
################################################################################

LIGHTDM_VERSION = 1.32.0
LIGHTDM_SITE = $(call github,canonical,lightdm,$(LIGHTDM_VERSION))
LIGHTDM_LICENSE = GPL-3.0, LGPL-2.0, LGPL-3.0
LIGHTDM_LICENSE_FILES = COPYING.GPL3 COPYING.LGPL2 COPYING.LGPL3
LIGHTDM_DEPENDENCIES = \
	host-gtk-doc \
	host-intltool \
	host-libxml2 \
	host-yelp-tools \
	libgcrypt \
	libglib2 \
	libxcb \
	libxklavier \
	linux-pam \
	xlib_libX11 \
	xlib_libXdmcp
LIGHTDM_CONF_OPTS = --disable-tests
LIGHTDM_INSTALL_STAGING = YES

LIGHTDM_AUTORECONF = YES

define LIGHTDM_GTKDOCIZE
	(cd $(LIGHTDM_SRCDIR) && $(HOST_DIR)/bin/gtkdocize --copy)
endef

LIGHTDM_PRE_CONFIGURE_HOOKS += LIGHTDM_GTKDOCIZE

$(eval $(autotools-package))
