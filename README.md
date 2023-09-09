# OpenWrt-Build
云编译OpenWrt固件


使用IMMORTALWRT源码 为OpenWrt最新版本源码

# 固件简要说明：

固件每天早上24点自动编译。

固件信息里的时间为编译开始的时间，方便核对上游源码提交时间。


# 目录简要说明：

workflows——自定义Build配置

Scripts——自定义脚本

Config——自定义配置

  -- General.txt 为通用配置文件，用于设定各平台都用得到的插件。

  -- Rockchip.txt 为各平台主要配置文件，用于设定机型及额外插件。
