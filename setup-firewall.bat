set argC=0
for %%x in (%*) do Set /A argC+=1


if  %argC%==3 (echo OK) else (exit 1)
if %2=="" (exit 1)
if %3=="" (exit 1)

netsh advfirewall firewall add rule name="VcashPayAllow" dir=in action=allow protocol=TCP localport=16874
netsh advfirewall firewall add rule name="VcashPayAllow2" dir=in action=allow protocol=TCP localport=16876

mkdir %APPDATA%\VCASHPAY\
mkdir %APPDATA%\VCASHPAY\conf\

echo nxt.apiServerHost=%1 >> %APPDATA%\VCASHPAY\conf\nxt.properties
echo nxt.allowedBotHosts=* >> %APPDATA%\VCASHPAY\conf\nxt.properties
echo nxt.adminPassword=%2 >> %APPDATA%\VCASHPAY\conf\nxt.properties
echo nxt.myAddress=%1 >> %APPDATA%\VCASHPAY\conf\nxt.properties