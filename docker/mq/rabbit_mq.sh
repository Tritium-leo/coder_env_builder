mkdir -p /home/docker/rabbitmq
docker run -d --restart=always --hostname rabbit --name rabbitmq-dev -p 15672:15672 -p 5672:5672 -v /home/docker/rabbitmq:/var/lib/rabbitmq rabbitmq
echo "--------run this in container----------"
echo rabbitmq-plugins enable rabbitmq_management
echo exit
docker exec -it rabbitmq-dev /bin/bash 

