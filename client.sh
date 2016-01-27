sudo echo "192.168.1.173 docker-hub.huawei.com"  >>  /etc/hosts

path=/etc/docker/certs.d/docker-hub.huawei.com


sudo mkdir -p $path
sudo cp certs/domain.crt -f $path/ca.crt
