#
# Copyright (C) 2011 OpenWrt.org  
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# updated to work with latest source from abrasive
#

include $(TOPDIR)/rules.mk

PKG_NAME:=shairport-new
PKG_VERSION:=1.0-dev
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/abrasive/shairport.git
PKG_SOURCE_VERSION:=b2c7bf111c1446739af9411d8a35acd9b6581b06
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz


PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk


define Package/shairport-new/Default
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=ShairPort-new
  URL:=http://mafipulation.org/
endef


define Package/shairport-new
  $(Package/shairport-new/Default)
#  DEPENDS:= +libpthread +libopenssl +alsa-lib +libavahi-client +avahi-utils +libao
   DEPENDS:= +libpthread +libopenssl +alsa-lib +libavahi-client
endef

define Package/shairport-new/description
  ShairPort is server software that implements the RAOP protocol for
  playback of music streamed from a compatible remote client.
endef


define Package/shairport-new/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/shairport $(1)/usr/bin/
endef


$(eval $(call BuildPackage,shairport-new))
