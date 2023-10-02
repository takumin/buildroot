################################################################################
#
# elogind
#
################################################################################

ELOGIND_VERSION = 252.9
ELOGIND_SITE = $(call github,elogind,elogind,v$(ELOGIND_VERSION))
ELOGIND_LICENSE = GPL-2.0+, LGPL-2.1+
ELOGIND_LICENSE_FILES = LICENSE.GPL2 LICENSE.LGPL2.1
ELOGIND_INSTALL_STAGING = YES

ELOGIND_DEPENDENCIES = \
	host-gperf \
	host-pkgconf \
	host-python-jinja2 \
	libcap \
	udev \
	util-linux-libs

ELOGIND_CONF_OPTS = \
	-Ddbus=false \
	-Ddbus-interfaces-dir=no \
	-Dman=false \
	-Dmode=release \
	-Dtests=false

$(eval $(meson-package))
