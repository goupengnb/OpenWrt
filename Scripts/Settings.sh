#!/bin/bash

#修改默认主题
sed -i "s/luci-theme-bootstrap/luci-theme-$OpenWrt_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#修改默认IP地址
sed -i "s/192\.168\.[0-9]*\.[0-9]*/$OpenWrt_IP/g" ./package/base-files/files/bin/config_generate
#修改默认主机名
sed -i "s/hostname='.*'/hostname='$OpenWrt_NAME'/g" ./package/base-files/files/bin/config_generate
#修改默认时区
sed -i "s/timezone='.*'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone='.*'/a\\\t\t\set system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
#修改无线名称
sed -i "s/ssid=.*/ssid=$WRT_WIFI/g" ./package/network/config/wifi-scripts/files/lib/wifi/mac80211.sh
#加入编译者信息
sed -i "s/DISTRIB_DESCRIPTION='[^']*'/DISTRIB_DESCRIPTION='GouPeng Build'/g" package/base-files/files/etc/openwrt_release
#TTYD自动登录
sed -i 's/\/bin\/login/\/bin\/login -f root/' ./feeds/packages/utils/ttyd/files/ttyd.config
#修改R5C leds配置
sed -i '/r5c/{n;n;n;i \    ucidef_set_led_netdev "wlan" "WLAN" "green:wlan" "phy0-ap0"
}' target/linux/rockchip/armv8/base-files/etc/board.d/01_leds
#首次开机后重启
sed -i "3i\sleep 100 && reboot\nsed -i \'3,4d\' /etc/rc.local" ./package/base-files/files/etc/rc.local
#编译6.1内核
sed -i 's/5.15/6.1/g' ./target/linux/rockchip/Makefile
#修改ssh登录信息
>package/base-files/files/etc/banner
echo -e ' ██████╗  ██████╗ ██╗   ██╗██████╗ ███████╗███╗   ██╗ ██████╗ ' >> package/base-files/files/etc/banner
echo -e '██╔════╝ ██╔═══██╗██║   ██║██╔══██╗██╔════╝████╗  ██║██╔════╝ ' >> package/base-files/files/etc/banner
echo -e '██║  ███╗██║   ██║██║   ██║██████╔╝█████╗  ██╔██╗ ██║██║  ███╗' >> package/base-files/files/etc/banner
echo -e '██║   ██║██║   ██║██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║██║   ██║' >> package/base-files/files/etc/banner
echo -e '╚██████╔╝╚██████╔╝╚██████╔╝██║     ███████╗██║ ╚████║╚██████╔╝' >> package/base-files/files/etc/banner
echo -e ' ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝ ╚═════╝ \n' >> package/base-files/files/etc/banner
