@REM if NOT %1 == NUL (echo %1) else (echo "oui")


@REM echo %1 
@REM echo %2 

set argC=0
for %%x in (%*) do Set /A argC+=1

if  %argC%==3 (echo OK) else (exit 1)

netsh advfirewall firewall add rule name="VcashPayAllow" dir=in action=allow protocol=TCP localport=16874
netsh advfirewall firewall add rule name="VcashPayAllow2" dir=in action=allow protocol=TCP localport=16876

echo nxt.apiServerHost=%1 >> %3\VCASHPAY\conf\nxt.propreties  
echo nxt.allowedBotHosts=* >> %3\vcashpay\conf\nxt.propreties
echo nxt.adminPassword=%2 >> %3\vcashpay\conf\nxt.propreties
echo nxt.myAddress=%1 >> %3\vcashpay\conf\nxt.propreties 

