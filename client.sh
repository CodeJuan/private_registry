sudo echo "192.168.1.173 docker-hub.huawei.com"  >>  /etc/hosts

path=/etc/docker/certs.d/docker-hub.huawei.com


sudo mkdir -p $path

sudo cp -f certs/domain.crt /etc/docker/certs.d/docker-hub.huawei.com/ca.crt
