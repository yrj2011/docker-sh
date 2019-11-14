rm -rf /opt/thingsboard/data/tb-postgres
mkdir -p /opt/thingsboard/data/tb-postgres
rm -rf /opt/thingsboard/log/tb-postgres
mkdir -p /opt/thingsboard/log/tb-postgres

docker stop thing-tb-01
docker rm thing-tb-01

docker run -it -p 9090:9090 -p 1883:1883 -p 5683:5683/udp -v /opt/thingsboard/data/tb-postgres:/data -v  /opt/thingsboard/log/tb-postgres:/var/log/thingsboard -d --name thing-tb-01 --restart always thingsboard/tb-postgres:2.4.1
