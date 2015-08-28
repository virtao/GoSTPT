@echo off
echo 修改前：GOPATH = %GOPATH%
set GOPATH=%~dp0;%GOPATH%
echo 修改后：GOPATH = %GOPATH%