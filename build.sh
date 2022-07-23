#!/bin/bash
set -e

# 安装yarn
[ `yarn -v | wc -l` -eq 0 ] && echo "start to install yarn" && npm install -g yarn

yarn --registry https://registry.npm.taobao.org/

# 生成镜像本地使用，指定dockerfile的文件，镜像name和tag => docker.io/library/test-docker-node:v1 最后一个参数`.`一定不要忘记，表示build目录
docker build -f Dockerfile -t test-docker-node:v1 .

echo "docker build 完成"