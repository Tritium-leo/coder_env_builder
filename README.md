# coder_env_builder
基于DOCKER - 帮助你构建开发环境

base:
-------
- ubuntu_init.sh
- normal_apt_install.sh

docker:
---------------
 - db
   - mysql 
 - harbor
 - mq
   - rabbitmq
 - portainer
 - prometheus
 - rancher
 - redis
 - snowflake
   - pysnowflake (Single Node python snowflake server) 
 

k8s:
---------
- kind
- yaml
  - Loki
- apply