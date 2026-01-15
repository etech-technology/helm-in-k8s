# Lab 02 — Values Overrides + ConfigMap (Project 2)

## Tasks
1) Install `flaskapp`
2) Override `config.message`
3) Scale to 3 replicas
4) Verify with `helm get values` and `helm get manifest`

## Commands
```bash
helm install flaskapp ./02-webapp-custom-chart -n demo   --set image.repository=<your-registry>/flaskapp --set image.tag=latest

helm upgrade flaskapp ./02-webapp-custom-chart -n demo   --set config.message="Hello class!"

helm upgrade flaskapp ./02-webapp-custom-chart -n demo --set replicaCount=3
helm get values flaskapp -n demo
helm get manifest flaskapp -n demo | head
```
