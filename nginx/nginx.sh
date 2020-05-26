docker run --name my-001-nginx -v /some/content:/usr/share/nginx/html   -v /host/path/nginx.conf:/etc/nginx/nginx.conf  -p 80:80  -d nginx:stable
