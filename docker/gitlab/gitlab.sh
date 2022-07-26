export GITLAB_HOME="/home/chi/gitlab"

mkdir -p $GITLAB_HOME

docker stop gitlab

docker rm gitlab

sudo docker run --detach \
  --hostname 192.168.3.7 \
  --publish 8443:443 --publish 8082:80 --publish 8022:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
