#!/bin/sh
set -e
git clone https://github.com/YMFE/yapi.git vendors

docker build . -t yapi:latest
