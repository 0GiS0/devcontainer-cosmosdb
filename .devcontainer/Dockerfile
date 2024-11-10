FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

RUN curl --insecure https://localhost:8081/_explorer/emulator.pem > ~/emulatorcert.crt && \
    sudo cp ~/emulatorcert.crt /usr/local/share/ca-certificates/emulatorcert.crt && \
    sudo update-ca-certificates
