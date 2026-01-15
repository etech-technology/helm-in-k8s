# Project 2 — Custom Web App Helm Chart (Flask)

## Build & Push the App Image
This project includes a small Flask app in `app/`.

```bash
cd app
docker build -t <your-registry>/flaskapp:latest .
docker push <your-registry>/flaskapp:latest
```

## Install with Helm
```bash
kubectl create ns demo

helm install flaskapp . -n demo   --set image.repository=<your-registry>/flaskapp   --set image.tag=latest

kubectl get pods -n demo
kubectl port-forward -n demo svc/flaskapp-webapp-flask-chart 8080:8080
# open http://localhost:8080
```

## Enable Ingress (optional)
```bash
helm upgrade flaskapp . -n demo --set ingress.enabled=true --set ingress.hosts[0].host=flask.local
```
