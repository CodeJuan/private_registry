# 用法

```sh
# 在搭建registry的机器上运行deploy.sh，初始化环境
bash deploy.sh

# 启动registry和frontend这2个docker
docker-compose up

# 然后在docker client端（另外的机器，要用registry的机器）执行,记得修改成你自己的registry的IP
bash client.sh
```
