docker run -d -p 9000:9000 --name portainer　--restart=always -v /opt/portainer:/data -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer　
docker ps |grep portainer
