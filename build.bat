:: �رտ���̨����  
@echo off

:: ��Q��dev�ļ���·�����ĳ����Լ��ģ�
SET DevDir=D:\��Q Pro\dev\me.cqp.tnze.demo
if not exist "%DevDir%" mkdir "%DevDir%"

:: ���û�������  
SET CGO_LDFLAGS=-Wl,--kill-at
SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=386

:: ����app.json  
go generate

:: ����app.dll  
go build -buildmode=c-shared -o app.dll

:: ��app.dll��app.json���Ƶ���Q��dev�ļ���
for %%f in (app.dll,app.json) do move %%f "%DevDir%\%%f" > nul