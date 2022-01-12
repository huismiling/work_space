# Linux System HandBook

## network
使用nmcli连接WiFi，命令行如下，需要sudo权限
```
nmcli dev status # 查看状态
nmcli radio wifi # 查看wifi是否启用
nmcli radio wifi on # 开启wifi
nmcli dev wifi list # 显示wifi列表
nmcli dev wifi connect "network-ssid" password "network-password"  # 连接WiFi
nmcli con show 
nmcli con down ssid/uuid
nmcli con up ssid/uuid
```

## sleep suspend
关闭、使能自动sleep和suspend。
```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
```
