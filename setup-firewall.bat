netsh advfirewall firewall add rule name="VcashPayAllow" dir=in action=allow protocol=TCP localport=16874
netsh advfirewall firewall add rule name="VcashPayAllow2" dir=in action=allow protocol=TCP localport=16876

@REM set argC=0
@REM for %%x in (%*) do Set /A argC+=1


@REM if  %argC%==3 (echo OK) else (exit 1)
@REM if %2=="" (exit 1)
@REM if %3=="" (exit 1)

@REM mkdir %APPDATA%\VCASHPAY\
@REM mkdir %APPDATA%\VCASHPAY\conf\

@REM echo nxt.apiServerHost=%1 >> %APPDATA%\VCASHPAY\conf\nxt.properties
@REM echo nxt.allowedBotHosts=* >> %APPDATA%\VCASHPAY\conf\nxt.properties
@REM echo nxt.adminPassword=%2 >> %APPDATA%\VCASHPAY\conf\nxt.properties
@REM echo nxt.myAddress=%1 >> %APPDATA%\VCASHPAY\conf\nxt.properties