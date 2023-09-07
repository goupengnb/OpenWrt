#!/bin/bash

#增加主题
echo "CONFIG_PACKAGE_luci-theme-$OpenWrt_THEME=y" >> .config
echo "CONFIG_PACKAGE_luci-app-$OpenWrt_THEME-config=y" >> .config
echo "CONFIG_PACKAGE_luci=y" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
