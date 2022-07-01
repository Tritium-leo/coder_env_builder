bash prepare
bash install.sh
docker-compose up -d

echo "打开浏览器，输入你刚才写的IP PORT"
echo "USERNAME : admin PASSWORD Harbor12345"
echo " SUCCESS . THEN CONFFIG YOUR DOCKER DAEMON"
echo "vim /etc/docker/daemon.json  "
echo "{"insucure-registries":["IP:PORT"]}
echo "systemctl daemon-reload"
echo "systemctl restart docker"
