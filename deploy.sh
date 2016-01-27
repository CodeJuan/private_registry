
curpath=$PWD
echo "$curpath"

path=./registry



sudo mkdir $path 
sudo chmod 777 /$path/


# certs
# 第四项CommonName输入你的registry的域名，我这里输入docker-hub.huawei.com。其余选项都敲回车，用默认值即可。
#openssl req -newkey rsa:4096 -nodes -sha256 -keyout certs/domain.key -x509 -days 365 -out certs/domain.crt
echo "copy certs to $path"
cp -rf certs $path/

cd $path


echo "copy cert to domain"
sudo mkdir -p /etc/docker/certs.d/docker-hub.huawei.com/
sudo cp certs/domain.crt /etc/docker/certs.d/docker-hub.huawei.com/ca.crt

echo auth
mkdir -p auth
# 这里改成通过registry2.2，自己在脚本嵌入密码的方式，减少一次输入
# 默认用户名密码是user 1234
docker run --entrypoint htpasswd registry:2.2.1 -Bbn user 1234 > auth/htpasswd

# mkdir
mkdir -p docker_registry


cd $curpath
