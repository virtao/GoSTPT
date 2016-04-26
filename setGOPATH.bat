@echo off
echo 修改前：
echo GOPATH = %GOPATH%
echo PATH = %PATH%
rem set GOPATH=%~dp0;%GOPATH%
set GOPATH=%~dp0
set PATH=%GOPATH%bin;%PATH%
echo 修改后：
echo GOPATH = %GOPATH%
echo PATH = %PATH%