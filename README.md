# Helm MasterClass — Sample Projects (Etech DevOps MasterClass)

This repo contains **4 hands-on projects** to teach Helm & Helm Charts end-to-end:
1. **01-nginx-basic-chart** — Helm chart fundamentals (templates, values, install/upgrade/rollback)
2. **02-webapp-custom-chart** — Package a real Flask app with ConfigMaps + Ingress
3. **03-ci-cd-helm-pipeline** — GitHub Actions workflow to deploy Helm charts to **EKS**
4. **04-observability-tools** — Install Prometheus + Grafana using Helm repos

## Prerequisites
- A Kubernetes cluster (EKS recommended) + `kubectl` configured
- Helm v3+
- (For CI/CD project) GitHub repo + AWS access (OIDC role or access keys)

## Quick Start (Local / Any Cluster)
```bash
kubectl create ns demo

# Project 1: NGINX
helm install nginx-demo ./01-nginx-basic-chart -n demo
kubectl get all -n demo
helm upgrade nginx-demo ./01-nginx-basic-chart -n demo --set replicaCount=2
helm rollback nginx-demo 1 -n demo

# Project 2: Flask app (image must exist in registry)
helm install flaskapp ./02-webapp-custom-chart -n demo   --set image.repository=<your-registry>/flaskapp   --set image.tag=latest
```

## Teaching Suggestions (60–90 mins)
- 10 min: Why Helm + basic commands
- 25 min: Chart anatomy + templating walkthrough (Project 1)
- 25 min: Values overrides + ConfigMap + Ingress (Project 2)
- 20 min: Upgrade/rollback + release history
- Optional: CI/CD automation + Observability (Projects 3 & 4)

## License
MIT — see [LICENSE](LICENSE)
