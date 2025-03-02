# Install Cert Manager
```bash
helm repo add jetstack https://charts.jetstack.io --force-update
```
```bash
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.17.0 \
  --set crds.enabled=true
```
