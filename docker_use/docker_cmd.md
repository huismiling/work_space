# Docker CMD

启动container
```
docker run -idt -v /home/xiaozhang/work/:/work/ --name vsc ubuntu:18.04 /bin/bash
```

进入container
```
docker exec -it vsc /bin/bash
```

查看container
```
docker ps -a
```

保存container

```
docker commit containerID  NAME
```


服务命令
```
启动        systemctl start docker
守护进程重启   sudo systemctl daemon-reload
重启docker服务   systemctl restart  docker
重启docker服务  sudo service docker restart
关闭docker   service docker stop   
关闭docker  systemctl stop docker

```