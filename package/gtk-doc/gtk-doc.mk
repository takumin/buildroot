################################################################################
#
# gtk-doc
#
################################################################################

GTK_DOC_VERSION_MAJOR = 1.33
GTK_DOC_VERSION = $(GTK_DOC_VERSION_MAJOR).2
GTK_DOC_SOURCE = gtk-doc-$(GTK_DOC_VERSION).tar.xz
GTK_DOC_SITE = https://download.gnome.org/sources/gtk-doc/$(GTK_DOC_VERSION_MAJOR)
GTK_DOC_LICENSE = GPL-2.0+, GFDL-1.1 (docs)
GTK_DOC_LICENSE_FILES = COPYING COPYING-DOCS
GTK_DOC_CPE_ID_VENDOR = gnome
HOST_GTK_DOC_DEPENDENCIES = host-python3 host-python-pygments host-itstool host-libxslt host-pkgconf
HOST_GTK_DOC_CONF_OPTS = -Dyelp_manual=false -Dtests=false

$(eval $(host-meson-package))
