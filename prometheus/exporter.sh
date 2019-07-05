#!/bin/bash
docker stop  my-001-prometheus-exporter
docker rm  my-001-prometheus-exporter
docker run --name my-001-prometheus-exporter -d   -p 9100:9100 prom/node-exporter:v0.18.1 
