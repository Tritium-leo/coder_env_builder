kubectl apply -f ../yaml/loki/loki-rbac.yaml
kubectl apply -f ../yaml/loki/loki-configmap.yaml
kubectl apply -f ../yaml/loki/loki.yaml
kubectl apply -f ../yaml/loki/loki-promtail-rabc.yaml
kubectl apply -f ../yaml/loki/loki-promtail-configmap.yaml
kubectl apply -f ../yaml/loki/loki-promtail.yaml

