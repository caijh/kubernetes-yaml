#!/bin/sh

# yapi初始化后会有一个init.lock文件

lockPath="/yapi/vendors/init.lock"

# 如果初始化文件文件存在,则直接运行,否则初始化

cd /yapi/vendors

if [ ! -f "$lockPath" ]; then
    cp -rf /tmp/yapi/* /yapi/vendors
    npm install --production --registry https://registry.npm.taobao.org
    # 启动Yapi初始化
    npm run install-server
    cp -rf /yapi/init.lock /yapi/vendors/init.lock
    node server/app.js
else
    # 运行yapi管理系统
    node server/app.js
fi
