helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update
helm install consul hashicorp/consul --values helm-consul-values.yaml
helm install vault hashicorp/vault --values helm-vault-values.yaml

kubectl exec vault-0 -- vault operator init -key-shares=1 -key-threshold=1 -format=json > cluster-keys.json

kubectl exec vault-0 -- vault operator unseal Ib9wyuuvCDCeMlLX4uG2ohUqpN5Ok2AXB4WnmFjvmsM=

kubectl exec --stdin=true --tty=true vault-0 -- /bin/sh
vault login
root-key

vault secrets enable -path=secret kv-v2
vault kv put secret/webapp/config DATABASE_URL="postgres://uxbuvhokbbocan:826a1d23fbb6b89baadb9e23d44d3f408b7ab17c513ce2b6cf1e2d5cae1bd1a8@postgres/dbit7n0ojntpd7" JWT_TOKEN="secret"
vault write auth/kubernetes/config \
        token_reviewer_jwt="$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" \
        kubernetes_host="https://$KUBERNETES_PORT_443_TCP_ADDR:443" \
        kubernetes_ca_cert=@/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
vault policy write webapp - <<EOF
path "secret/data/webapp/config" {
  capabilities = ["read"]
}
EOF