#!/usr/bin/env bash
set -euo pipefail

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

kubectl create namespace monitoring --dry-run=client -o yaml | kubectl apply -f -

helm upgrade --install kube-prometheus prometheus-community/kube-prometheus-stack   -n monitoring   -f values-overrides.yaml

echo ""
echo "Installed kube-prometheus-stack in namespace 'monitoring'."
echo "Next: run ./grafana-install.sh to port-forward Grafana."
