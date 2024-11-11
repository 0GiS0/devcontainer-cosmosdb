#!/usr/bin/env bash

set -euxo pipefail

COSMOSDB_EMU_ENDPOINT=https://cosmosdb:8081
WAIT_TIMEOUT=2

until sudo curl -ksf "${COSMOSDB_EMU_ENDPOINT}/_explorer/emulator.pem" -o '/usr/local/share/ca-certificates/emulator.crt'; do
  echo "Waiting for emulator to be ready..."
  sleep $WAIT_TIMEOUT
done

sudo update-ca-certificates