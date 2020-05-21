docker stop  my-001-redis
docker rm  my-001-redis
docker run  --restart=always  -d --name my-001-redis -p 6379:6379 redis:4.0.12
