#!/usr/bin/env bash
# 此脚本支持快速安装该依赖到本地maven库中
# 前置依赖为git 与 mvn命令, 且git需要在github配置ssh key
rm -rf /tmp/parent-pom
git clone --depth=1 git@github.com:cafune1853/parent-pom.git /tmp/parent-pom
cd /tmp/parent-pom
mvn install -DskipTests
rm -rf /tmp/parent-pom