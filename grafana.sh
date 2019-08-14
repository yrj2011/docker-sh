docker stop  my-001-grafana
docker rm  my-001-grafana
docker run  -d --name my-001-grafana -p 3000:3000 grafana/grafana
