#!/bin/bash
mkdir -p /usr/local/promethues/pushgateway
docker stop  my-001-prometheus-pushgateway
docker rm  my-001-prometheus-pushgateway
docker run --name my-001-prometheus-pushgateway -d   -p 9091:9091  prom/pushgateway:v0.8.0 

