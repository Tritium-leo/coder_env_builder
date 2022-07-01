# https://baijiahao.baidu.com/s?id=1707816679863571585&wfr=spider&for=pc
apt-get install -y python3-pip
pip install docker-compose
echo "如果太慢 替换为或内GITHUB 镜像如 ： https://download.fastgit.org/goharbor/harbor/releases/download/v2.5.1/harbor-offline-installer-v2.5.1.tgz"
# wget -nc https://github.91chi.fun/https://github.com//goharbor/harbor/releases/download/v2.5.1/harbor-offline-installer-v2.5.1.tgz
wget -nc https://download.fastgit.org/goharbor/harbor/releases/download/v2.5.1/harbor-offline-installer-v2.5.1.tgz
tar -zxvf harbor-offline-installer-v2.5.1.tgz
cd harbor
cp harbor.yml.tmpl harbor.yml
echo "注释掉htps的配置内容，配置htp相关的参数，主要是hostname，port，其他都可以不用动。"
echo "if your want use host = reg.myharbor.com , plaease vim your hosts (ubuntu:/etc/hosts)"
echo "then run harbor2.sh"
