#!/bin/sh
echo 修改前：
echo GOPATH = $GOPATH
echo PATH = $PATH
# export GOPATH=`pwd`:$GOPATH
export GOPATH=`pwd`
export PATH=$GOPATH/bin:$PATH
echo 修改后：
echo GOPATH = $GOPATH
echo PATH = $PATH