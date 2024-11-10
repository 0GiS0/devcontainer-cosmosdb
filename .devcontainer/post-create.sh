curl --insecure https://cosmosdb:8081/_explorer/emulator.pem > ~/emulatorcert.crt

sudo cp ~/emulatorcert.crt /usr/local/share/ca-certificates/emulatorcert.crt

sudo update-ca-certificates