# https://www.jb51.net/article/219848.htm
# Node Exporter 收集系统信息，用于监控CPU、内存、磁盘使用率、磁盘读写等系统信息 –net=host，这样 Prometheus Server 可以直接与 Node Exporter 通信
docker run -d -p 9100:9100 -v "/proc:/host/proc" -v "/sys:/host/sys" -v "/:/rootfs" -v "/etc/localtime:/etc/localtime" --net=host prom/node-exporter --path.procfs /host/proc --path.sysfs /host/sys --collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"

docker ps|grep exporter

#

docker run -d -v "/etc/localtime:/etc/localtime" --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --volume=/dev/disk/:/dev/disk:ro --publish=18104:8080 --detach=true --name=cadvisor --privileged=true google/cadvisor:latest

docker ps|grep cadvisor



# yml LOOK https://www.jb51.net/article/219848.htm
docker run -d -p 9090:9090 -v /home/docker/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml -v "/etc/localtime:/etc/localtime" --name prometheus --net=host prom/prometheus:latest

# 当Prometheus容器启动成功后访问
# PS：服务器需开启eth0的外网端口，才可用浏览器访问 9090 0.0.0.0 106.15.0.11:9090


# 创建运行Grafana

docker run -d -i -p 3000:3000 -v "/etc/localtime:/etc/localtime" -e "GF_SERVER_ROOT_URL=http://grafana.server.name" -e "GF_SECURITY_ADMIN_PASSWORD=admin" --net=host grafana/grafana

# PS：服务器需开启eth0的外网端口，才可用浏览器访问：3000 0.0.0.0 Grafana启动后，在浏览器中打开 172.23.0.241:3000 登录界面，登录：用户名：admin admin
