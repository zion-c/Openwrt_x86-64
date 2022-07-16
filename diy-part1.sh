#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
svn co https://github.com/linkease/istore/trunk/luci/luci-app-store package/luci-app-store
svn co https://github.com/linkease/istore-ui/trunk/app-store-ui package/app-store-ui
