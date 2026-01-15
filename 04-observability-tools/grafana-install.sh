#!/usr/bin/env bash
set -euo pipefail

echo "Port-forwarding Grafana to http://localhost:3000 ..."
kubectl -n monitoring port-forward svc/kube-prometheus-grafana 3000:80
