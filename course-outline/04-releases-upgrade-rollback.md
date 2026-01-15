# Module 04 — Releases, Upgrade, Rollback

## Key Commands
```bash
helm list -n demo
helm status nginx-demo -n demo
helm history nginx-demo -n demo
helm upgrade nginx-demo ./01-nginx-basic-chart -n demo --set replicaCount=2
helm rollback nginx-demo 1 -n demo
```
