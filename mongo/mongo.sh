docker stop  my-001-mongo
docker rm  my-001-mongo
docker run -p 27017:27017  --name my-001-mongo -d mongo:3.2
