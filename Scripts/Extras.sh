#!/bin/bash

#增加主题
echo "CONFIG_PACKAGE_luci-theme-$OWRT_THEME=y" >> .config
echo "CONFIG_PACKAGE_luci-app-$OWRT_THEME-config=y" >> .config
