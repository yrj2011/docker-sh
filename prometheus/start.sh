#!/bin/bash
echo "arg $1"
./prometheus.sh $1
./pushgateway.sh $1
./pushgateway-demo.sh $1
./exporter.sh $1
./alertmanager.sh $1
./reload.sh $1
