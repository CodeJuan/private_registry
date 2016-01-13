sudo echo "192.168.1.173 docker-hub.huawei.com"  >>  /etc/hosts

sudo mkdir -p /etc/docker/certs.d/docker-hub.huawei.com:5000/

sudo scp g530@docker-hub.huawei.com:/registry/certs/domain.crt /etc/docker/certs.d/docker-hub.huawei.com:5000/ca.crt
