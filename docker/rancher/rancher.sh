# 1 install helm
helm version
# https://github.com/helm/helm/releases
echo "YOUR MASTER INSTALL HELM FIRST! https://github.com/helm/helm/releases"
# 2
docker run -d --restart=unless-stopped -p 8010:80 -p 443:443 --privileged --name rancher rancher/rancher:v2.6.5