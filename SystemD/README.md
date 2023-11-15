


---


## 📝 Table of Contents

- [Create User](#user)
- [SystemD](#getting_started)


## 🧐 Create User <a name = "user"></a>

1. Create user ```sudo addusr <username>```
2. Chanche password with ```sudo passwd <username>```
3. Add Access sudo for use with ```sudo usermod -a -G sudo <username>``` 
## 🏁 Getting Started <a name = "getting_started"></a>

Next step create and run systemd file

### SystemD

Create systemd

```
vim /etc/systemd/system/spring.service
```
Past next

```
[Unit]
Description=Sample Web Server
After=network.target

[Service]
Environment=PORT=8888
ExecStart=java -jar /opt/sample/service.jar
Restart=always
RestartSec=10
User=github

[Install]
WantedBy=multi-user.target
```
Run  and check logs with ``` sudo systmectl start spring.service && journalctl -u spring.service -f ```


