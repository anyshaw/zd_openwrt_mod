#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=gevent
PKG_VERSION:=0.13.8
PKG_RELEASE:=1

PKG_SOURCE:=gevent-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://pypi.python.org/packages/source/g/gevent/
PKG_MD5SUM:=ca9dcaa7880762d8ebbc266b11252960

PKG_BUILD_DIR:=$(BUILD_DIR)/gevent-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/gevent
  SUBMENU:=Python
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=gevent
  URL:=http://www.gevent.org/
  DEPENDS:=+python +python-greenlet +libevent2
endef

define Package/gevent/description
  gevent is a coroutine-based Python networking library.
endef

define Build/Compile
	$(call Build/Compile/PyMod,,install --prefix="$(PKG_INSTALL_DIR)/usr")
endef

define Package/gevent/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	$(CP) \
	    $(PKG_INSTALL_DIR)$(PYTHON_PKG_DIR)/* \
	    $(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,gevent))
