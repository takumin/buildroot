################################################################################
#
# iso-codes
#
################################################################################

ISO_CODES_VERSION = 4.15.0
ISO_CODES_SOURCE = iso-codes-v$(ISO_CODES_VERSION).tar.gz
ISO_CODES_SITE = https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v$(ISO_CODES_VERSION)
ISO_CODES_LICENSE = LGPL-2.1
ISO_CODES_LICENSE_FILES = COPYING
ISO_CODES_DEPENDENCIES = host-pkgconf
ISO_CODES_INSTALL_STAGING = YES

ISO_CODES_AUTORECONF = YES

$(eval $(autotools-package))
