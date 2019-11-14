docker stop  my-001-mysql
docker rm  my-001-mysql
docker run --restart=always --name my-001-mysql -e MYSQL_ROOT_PASSWORD=123456 -p 13306:3306 -d mysql:5.7
