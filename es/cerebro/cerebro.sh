docker stop cerebro-1
docker rm cerebro-1
docker run --restart=always --name cerebro-1 -p 9000:9000 lmenezes/cerebro:0.8.3
