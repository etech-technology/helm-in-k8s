# Module 03 — Templating + Values

## Core Objects
- `.Values`
- `.Release.Name`, `.Release.Namespace`
- `.Chart.Name`, `.Chart.Version`

## Overrides
```bash
helm upgrade --install nginx-demo ./01-nginx-basic-chart -n demo --set replicaCount=3
```

## Debugging
```bash
helm lint .
helm template .
helm get manifest <release> -n <ns>
```
