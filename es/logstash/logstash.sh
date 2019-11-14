docker stop logstash-1
docker rm logstash-1
docker run   --restart=always   --name logstash-1 -d logstash:7.4.1
