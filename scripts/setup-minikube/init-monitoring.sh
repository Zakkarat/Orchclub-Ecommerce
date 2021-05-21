kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install --namespace monitoring prometheus prometheus-community/kube-prometheus-stack
kubectl port-forward --namespace monitoring service/prometheus-grafana 3000:80

helm install loki-stack grafana/loki-stack --create-namespace --namespace loki-stack --set promtail.enabled=true,loki.persistence.enabled=true,loki.persistence.size=10Gi
helm install loki-grafana grafana/grafana --set persistence.enabled=true,persistence.type=pvc,persistence.size=10Gi --namespace=loki-stack

kubectl get secret --namespace loki-stack loki-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

kubectl port-forward --namespace loki-stack service/loki-grafana 3000:80

http://loki-stack.loki-stack:3100