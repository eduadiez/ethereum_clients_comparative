#!/bin/bash

source .env

sed -i 's/username: admin/username: '${ADMIN_USER}'/g' prometheus/prometheus.yml
sed -i 's/password: admin/password: '${ADMIN_PASSWORD}'/g' prometheus/prometheus.yml

docker-compose -f docker-compose.monitor.yml pull
docker-compose -f docker-compose.geth.yml pull
docker-compose -f docker-compose.parity.yml pull