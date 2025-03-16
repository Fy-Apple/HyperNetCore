#!/bin/bash

# 清理之前的构建文件
rm -rf cmake-build-debug
mkdir cmake-build-debug
cd cmake-build-debug

# 运行cmake配置
cmake ..

# 构建项目
make


