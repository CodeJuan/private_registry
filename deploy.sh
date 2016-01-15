
curpath=$PWD
echo "$curpath"
path=/registry



sudo mkdir $path 
sudo chmod 777 /$path/
cd $path

# certs
mkdir -p certs
openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key -x509 -days 365 -out certs/domain.crt

# copy cert to domain
sudo mkdir /etc/docker/certs.d/docker-hub.huawei.com:5000/ -p
sudo cp certs/domain.crt /etc/docker/certs.d/docker-hub.huawei.com\:5000/ca.crt

# auth
mkdir -p auth
# 这里改成通过registry2.2，自己在脚本嵌入密码的方式，减少一次输入
htpasswd -cB auth/htpasswd user1
#htpasswd -B auth/htpasswd user2

# mkdir
mkdir -p docker_registry


cd $curpath
