rm -rf /opt/es/data1
rm -rf /opt/es/data2
rm -rf /opt/es/data3
mkdir -p /opt/es/data1
mkdir -p /opt/es/data2
mkdir -p /opt/es/data3
chmod 777 /opt/es/data1
chmod 777 /opt/es/data2
chmod 777 /opt/es/data3
docker stop ES01
docker stop ES02
docker stop ES03
docker rm ES01
docker rm ES02
docker rm ES03


docker run     --restart=always  -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -d -p 9200:9200 -p 9300:9300  -e "discovery.type=single-node" -v /opt/es/data1:/usr/share/elasticsearch/data --name ES01 elasticsearch:7.4.1
 
#docker run   --restart=always   -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -d -p 9201:9201 -p 9301:9301 -v /home/local/docker-sh/es/es1/es2.yml:/usr/share/elasticsearch/config/elasticsearch.yml -v /opt/es/data2:/usr/share/elasticsearch/data --name ES02 elasticsearch:5.6.8

#docker run   --restart=always  -e ES_JAVA_OPTS="-Xms256m -Xmx256m" -d -p 9202:9202 -p 9302:9302 -v /home/local/docker-sh/es/es1/es3.yml:/usr/share/elasticsearch/config/elasticsearch.yml -v /opt/es/data3:/usr/share/elasticsearch/data --name ES03 elasticsearch:5.6.8

