rm -rf /usr/local/promethues
mkdir -p /usr/local/promethues
cp prometheus.yml /usr/local/promethues/
mkdir -p /usr/local/promethues/server
mkdir -p /usr/local/promethues/client
touch /usr/local/promethues/server/rules.yml
chmod 777 /usr/local/promethues/server/rules.yml
docker stop  my-001-prometheus
docker rm  my-001-prometheus
docker run --name my-001-prometheus -d   -p 9090:9090 -v /usr/local/promethues/prometheus.yml:/etc/prometheus/prometheus.yml  -v /usr/local/promethues/server/rules.yml:/etc/prometheus/rules.yml  prom/prometheus:v2.7.2 --config.file=/etc/prometheus/prometheus.yml --web.enable-lifecycle 

