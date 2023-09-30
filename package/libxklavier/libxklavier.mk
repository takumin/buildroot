################################################################################
#
# libxklavier
#
################################################################################

LIBXKLAVIER_VERSION = 5.3
LIBXKLAVIER_SOURCE = libxklavier-$(LIBXKLAVIER_VERSION).tar.xz
LIBXKLAVIER_SITE = https://download.gnome.org/sources/libxklavier/$(LIBXKLAVIER_VERSION)
LIBXKLAVIER_LICENSE = LGPL-2.0
LIBXKLAVIER_LICENSE_FILES = COPYING.LIB
LIBXKLAVIER_DEPENDENCIES = iso-codes libglib2 libxml2 xlib_libX11
LIBXKLAVIER_CONF_OPTS = --disable-gtk-doc --disable-gtk-doc-html --disable-gtk-doc-pdf
LIBXKLAVIER_INSTALL_STAGING = YES

LIBXKLAVIER_AUTORECONF = YES

ifeq ($(BR2_PACKAGE_LIBXKLAVIER_XKB_SUPPORT),y)
LIBXKLAVIER_CONF_OPTS += --enable-xkb-support
LIBXKLAVIER_DEPENDENCIES += xlib_libxkbfile
else
LIBXKLAVIER_CONF_OPTS += --disable-xkb-support
endif

ifeq ($(BR2_PACKAGE_LIBXKLAVIER_XMODMAP_SUPPORT),y)
LIBXKLAVIER_CONF_OPTS += --enable-xmodmap-support
LIBXKLAVIER_DEPENDENCIES += xapp_xmodmap
else
LIBXKLAVIER_CONF_OPTS += --disable-xmodmap-support
endif

define LIBXKLAVIER_REMOVE_DOCUMENTS
	$(RM) -fr $(TARGET_DIR)/usr/share/gtk-doc/html/libxklavier
endef

LIBXKLAVIER_POST_INSTALL_TARGET_HOOKS += LIBXKLAVIER_REMOVE_DOCUMENTS

$(eval $(autotools-package))
