# 用法
先安装docker-compose
```sh
# 在搭建registry的机器上运行deploy.sh，初始化环境
bash deploy.sh

# 启动registry和frontend这2个docker
docker-compose up

# 然后在docker client端（另外的机器，要用registry的机器）执行,记得修改成你自己的registry的IP
bash client.sh
```

然后在client上
```
docker login docker-hub.huawei.com

用户名user  密码1234

docker push

docker pull
```
也可以访问前端查看镜像
[https://docker-hub.huawei.com/home](https://docker-hub.huawei.com/home)
用户名user  密码1234




赶时间，用的都是简单粗暴的方法，等走通流程之后再重构

# 架构
![](http://dockerone.com/uploads/article/20150512/1e111941614512fcc0bdeb2e80ee9384.png)
来自钟成的文章[http://dockone.io/people/%E9%9A%BE%E6%98%93](http://dockone.io/people/%E9%9A%BE%E6%98%93)

# mirror
用的就是registry的mirror功能，在client daemon也设置了OPT --registry-mirror，mirror可以收到request，可第二次还是404，需要研究一下
