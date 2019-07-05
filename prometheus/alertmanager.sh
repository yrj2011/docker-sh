#!/bin/bash
mkdir -p /usr/local/promethues/altermanager
cp -f alertmanager.yml  /usr/local/promethues/altermanager
sed -i "s/##ip##/$1/g" /usr/local/promethues/altermanager/alertmanager.yml
chmod 777 /usr/local/promethues/altermanager/*
docker stop  my-001-prometheus-altermanager
docker rm  my-001-prometheus-altermanager
docker run --name my-001-prometheus-altermanager -v /usr/local/promethues/altermanager/alertmanager.yml:/etc/alertmanager/alertmanager.yml -d   -p 9093:9093  prom/alertmanager:v0.17.0

