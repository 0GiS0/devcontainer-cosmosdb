#!/usr/bin/env bash

# I refer to this repository.
# https://github.com/aaronpowell/FSharp.CosmosDb

set -euxo pipefail

COSMOS__ENDPOINT=https://cosmosdb:8081

# Try to get the emulator cert in a loop
until sudo curl -ksf "${COSMOS__ENDPOINT}/_explorer/emulator.pem" -o '/usr/local/share/ca-certificates/emulator.crt'; do
  echo "Downloading cert from $COSMOS__ENDPOINT"
  sleep 1
done

sudo update-ca-certificates