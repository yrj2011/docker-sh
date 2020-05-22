docker stop myadmin
docker rm myadmin
docker run --name myadmin -d --restart=always  --link my-001-mysql:db -p 8283:80 phpmyadmin/phpmyadmin
