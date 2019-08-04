#!/bin/bash
openssl rand -base64 756 > ./configs/keyfile
chmod 400 ./configs/keyfile
chown 999:999 ./configs/keyfile
docker-compose up -d
