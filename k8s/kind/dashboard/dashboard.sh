# wget https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml
kubectl apply -f recommended.yaml
echo "登录需要token，生成方法是：https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md"