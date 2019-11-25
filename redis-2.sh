docker stop  my-002-redis
docker rm  my-002-redis
docker run -d  --restart=always --name my-002-redis -p 6380:6379 redis:4.0.12
