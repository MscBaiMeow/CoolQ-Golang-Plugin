@echo off
SET CGO_LDFLAGS=-Wl,--kill-at
SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=386
SET GOPROXY=https://goproxy.cn

::����Ƿ�װ�˱�����
where gcc > nul
if errorlevel 1 echo �Ҳ���gcc
where go > nul
if errorlevel 1 echo �Ҳ���go

::����SDK  
go get github.com/Tnze/CoolQ-Golang-SDK > nul
::��װcqcfg  
go install github.com/Tnze/CoolQ-Golang-SDK/tools/cqcfg
