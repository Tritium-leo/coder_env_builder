mkdir -p /home/docker/gitlab-runner/config
docker run -d --name gitlab-runner --restart=always -v /home/docker/gitlab-runner/config:/etc/gitlab-runner -v /var/run/docker.sock:/var/run/docker.sock gitlab/gitlab-runner:latest
docker run --rm -it -v /home/docker/gitlab-runner/config:/etc/gitlab-runner gitlab/gitlab-runner register