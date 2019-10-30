docker stop  my-001-minio
docker rm  my-001-minio
docker run  --restart=always  -e "MINIO_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE"   -e "MINIO_SECRET_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"   -d --name my-001-minio -p 9001:9000 minio/minio:RELEASE.2019-10-02T21-19-38Z  server /data
