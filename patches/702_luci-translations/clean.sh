#!/bin/sh
patchdir=$(cd `dirname $0`;pwd)
basedir=$(cd `dirname $0`;cd ../../../;pwd)

rm_lock() {
    rm -f $basedir/.git/index.lock
}

rm_lock

cd $basedir/feeds/luci/modules/luci-base/po/zh-cn/
rm -f base.po
git checkout base.po
