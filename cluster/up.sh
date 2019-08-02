#!/bin/bash
openssl rand -base64 756 > ./configs/keyfile
chmod 400 ./configs/keyfile
chown 999:999 ./configs/keyfile
docker-compose -f docker-compose.1.yml -f docker-compose.2.yml -f docker-compose.cnf.yml -f docker-compose.shard.yml up -d
