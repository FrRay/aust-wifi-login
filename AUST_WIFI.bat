@echo off
set wifiName=AUST_Student
set userId=“你的学号”
set Password=“你的密码”
set operatorCode=“运营商cmcc/移动|unicom/联通|aust/电信 eg:unicom”

ping -n 1 -w 100 10.255.0.19 | findstr /i "TTL" >nul
if %ERRORLEVEL% equ 0 goto POST
@echo on
netsh wlan connect name = %wifiName%

@echo off
:CHECK_CONNECTION
netsh wlan show interface | findstr /i /e %wifiName% >nul
if %ERRORLEVEL% neq 0 goto CHECK_CONNECTION

:POST
@echo on
curl --max-time 2 --retry 4 --retry-delay 1 -d "callback=dr1003&DDDDD=%userId%@%operatorCode%&upass=%Password%&0MKKey=123456" http://10.255.0.19/drcom/login
curl --max-time 2 --retry 4 --retry-delay 1 -d "callback=dr1003&DDDDD=%userId%@%operatorCode%&upass=%Password%&0MKKey=123456" http://10.255.0.19/drcom/login
