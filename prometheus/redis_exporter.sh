#!/bin/bash
docker stop redis_exporter
docker rm  my-001-redis_exporter
docker run -e TZ="Asia/Shanghai" --name my-001-redis_exporter  -d   -p 9121:9121 oliver006/redis_exporter  --redis.addr="192.168.1.121:6379"

