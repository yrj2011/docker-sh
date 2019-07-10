docker stop  my-001-consul
docker rm  my-001-consul
docker run -d -p 8500:8500 -h node1 --name my-001-consul  consul agent -server -bootstrap-expect=1  -node=node1 -client 0.0.0.0 -ui
