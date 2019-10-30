yum update
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum list docker-ce --showduplicates | sort -r
yum install  docker-ce-17.12.1.ce-1.el7.centos
systemctl start docker
systemctl enable docker
