# OpenWRT-CI
云编译OpenWRT固件


IMMORTALWRT源码：
https://github.com/immortalwrt/immortalwrt

# 固件简要说明：

固件每天早上24点自动编译。

固件信息里的时间为编译开始的时间，方便核对上游源码提交时间。

Rockchip系列，包含T4 T6 R2C R2S R4S R5C R5S R6C R6S R66S R68S H66K H68K H69K

# 目录简要说明：

workflows——自定义CI配置

Scripts——自定义脚本

Config——自定义配置

  -- General.txt 为通用配置文件，用于设定各平台都用得到的插件。

  -- Rockchip.txt 为各平台主要配置文件，用于设定机型及额外插件。
