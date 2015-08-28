@echo off
echo 修改前：GOPATH = %GOPATH%
set GOPATH=%cd%;%GOPATH%
echo 修改后：GOPATH = %GOPATH%