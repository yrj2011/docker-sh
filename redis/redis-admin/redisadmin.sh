docker stop my-001-redisadmin
docker rm my-001-redisadmin
docker run --restart=always  --name my-001-redisadmin -d -p 8081:8081  registry.cn-hangzhou.aliyuncs.com/bwp/redisadmin:v1 




