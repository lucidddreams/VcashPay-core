set argC=0
for %%x in (%*) do Set /A argC+=1


if  %argC%==3 (echo OK) else (exit 1)
if %2=="" (exit 1)
if %3=="" (exit 1)

netsh advfirewall firewall add rule name="VcashPayAllow" dir=in action=allow protocol=TCP localport=16874
netsh advfirewall firewall add rule name="VcashPayAllow2" dir=in action=allow protocol=TCP localport=16876

echo nxt.apiServerHost=%2 >> %1  
echo nxt.allowedBotHosts=* >> %1
echo nxt.adminPassword=%3 >> %1
echo nxt.myAddress=%2 >> %1