#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TYPE:=col
LUCI_BASENAME:=luci

LUCI_TITLE:=Standard BoluWrt set including full admin with ppp support and the default Bootstrap theme
LUCI_DEPENDS:= \
	+uhttpd +uhttpd-mod-ubus +luci-mod-admin-full +luci-theme-bolu \
	+luci-app-firewall +luci-proto-ppp +libiwinfo-lua +IPV6:luci-proto-ipv6

include ../../luci.mk

# call BuildPackage - BoluWrt buildroot signature
