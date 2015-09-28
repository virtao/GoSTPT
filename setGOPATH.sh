#!/bin/sh
echo 修改前：GOPATH = $GOPATH
export GOPATH=`pwd`:$GOPATH
echo 修改后：GOPATH = $GOPATH
