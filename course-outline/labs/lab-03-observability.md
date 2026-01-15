# Lab 03 — Observability with Helm (Project 4)

## Tasks
1) Run `prometheus-install.sh`
2) Verify pods in `monitoring`
3) Port-forward Grafana
4) Cleanup

## Commands
```bash
cd 04-observability-tools
./prometheus-install.sh
kubectl get pods -n monitoring
./grafana-install.sh
helm uninstall kube-prometheus -n monitoring
```
