mkdir -p /home/docker/redis/data

docker run --restart=always --log-opt max-size=100m --log-opt max-file=2 -p 6379:6379 --name redis-dev -v /home/docker/redis/redis.conf:/etc/redis/redis.conf -v /home/docker/redis/data:/data -d redis redis-server /etc/redis/redis.conf  --appendonly yes  --requirepass 000415

docker ps |grep redis-dev
