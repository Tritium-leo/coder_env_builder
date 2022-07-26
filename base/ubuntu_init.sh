
echo "INIT YOUR UBUNTU"
cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
" >> /etc/apt/sources.list

apt-get update 

apt install -y vim
apt-get install -y curl
apt-get install -y g++
apt-get install -y gcc
apt-get install -y ssh
apt-get install -y make
# choose
apt-get install -y docker
apt-get install -y python3
apt-get install -y python3-pip
# ----