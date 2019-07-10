systemctl stop firewalld.service
service iptables stop
systemctl disable firewalld.service
systemctl disable iptables.service
