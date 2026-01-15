# Helm MasterClass — Sample Projects (Etech DevOps MasterClass)

This repo contains **4 hands-on projects** to teach Helm & Helm Charts end-to-end:
1. **01-nginx-basic-chart** — Helm chart fundamentals (templates, values, install/upgrade/rollback)
2. **02-webapp-custom-chart** — Package a real Flask app with ConfigMaps + optional Ingress
3. **03-ci-cd-helm-pipeline** — GitHub Actions workflow to deploy Helm charts to **EKS**
4. **04-observability-tools** — Install Prometheus + Grafana using Helm repos

## What’s New
✅ Added full **course-outline lecture notes**, instructor prompts, labs, and quizzes in:
- `course-outline/`

## Prerequisites
- A Kubernetes cluster (EKS recommended) + `kubectl` configured
- Helm v3+
- (For CI/CD project) GitHub repo + AWS access (OIDC role or access keys)

## Quick Start (Any Cluster)
```bash
kubectl create ns demo

# Project 1: NGINX
helm install nginx-demo ./01-nginx-basic-chart -n demo
kubectl get all -n demo
helm upgrade nginx-demo ./01-nginx-basic-chart -n demo --set replicaCount=2
helm rollback nginx-demo 1 -n demo

# Project 4: Observability
cd 04-observability-tools
./prometheus-install.sh
```

## License
MIT — see [LICENSE](LICENSE)
