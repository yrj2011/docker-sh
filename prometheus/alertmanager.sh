mkdir -p /usr/local/promethues/altermanager
cp alertmanager.yml  /usr/local/promethues/altermanager
chmod 777 /usr/local/promethues/altermanager/*
docker stop  my-001-prometheus-altermanager
docker rm  my-001-prometheus-altermanager
docker run --name my-001-prometheus-altermanager -v /usr/local/promethues/altermanager/alertmanager.yml:/etc/alertmanager/alertmanager.yml -d   -p 9093:9093  prom/alertmanager:v0.17.0

