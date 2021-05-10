java -cp classes nxt.tools.ManifestGenerator
del nxt.jar
jar cfm VcashPay.jar resource\nxt.manifest.mf -C classes .
del vcpservice.jar
jar cfm VcashPayservice.jar resource\nxtservice.manifest.mf -C classes .

echo "jar files generated successfully"