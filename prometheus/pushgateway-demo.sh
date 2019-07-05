#!/bin/bash
echo "cqh_metric 100" | curl --data-binary @- http://$1:9091/metrics/job/cqh
