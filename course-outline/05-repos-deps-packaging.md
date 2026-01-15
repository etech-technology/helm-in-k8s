# Module 05 — Repos, Dependencies, Packaging

## Repos
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm search repo prometheus-community
```

## Package
```bash
helm package ./01-nginx-basic-chart
```

## Dependencies (Intro)
```yaml
dependencies:
  - name: redis
    version: 19.6.0
    repository: https://charts.bitnami.com/bitnami
```
```bash
helm dependency update .
```
