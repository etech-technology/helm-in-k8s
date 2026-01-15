# Lab 01 — NGINX Chart Basics (Project 1)

## Tasks
1) Create namespace `demo`
2) Install release `nginx-demo`
3) Upgrade replicas to 2
4) Roll back to revision 1
5) Uninstall

## Commands
```bash
kubectl create ns demo
helm install nginx-demo ./01-nginx-basic-chart -n demo
kubectl get deploy,svc -n demo
helm upgrade nginx-demo ./01-nginx-basic-chart -n demo --set replicaCount=2
helm history nginx-demo -n demo
helm rollback nginx-demo 1 -n demo
helm uninstall nginx-demo -n demo
```
