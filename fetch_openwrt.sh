#!/bin/bash

(git clone -b master --single-branch https://github.com/coolsnowwolf/lede openwrt) || (cd openwrt && git stash && git pull)

cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a
