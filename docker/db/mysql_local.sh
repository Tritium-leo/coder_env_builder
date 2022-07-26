mkdir -p /home/docker/mysql/conf
mkdir -p /home/docker/mysql/data

docker run -itd --name mysql-dev -p 3306:3306 --restart=always -e MYSQL_ROOT_PASSWORD=root -v /home/docker/mysql/conf:/etc/mysql/conf.d -v /home/docker/mysql/data:/var/lib/mysql mysql:8.0.26
