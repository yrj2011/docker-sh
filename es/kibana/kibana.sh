docker stop kibana-1
docker rm kibana-1
docker run   --restart=always   --name kibana-1 --link ES01:elasticsearch  -p 5601:5601 -d kibana:7.4.1
