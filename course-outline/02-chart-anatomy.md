# Module 02 — Helm Chart Anatomy

## Chart Structure
```
mychart/
  Chart.yaml
  values.yaml
  templates/
  charts/ (deps)
  templates/_helpers.tpl (helpers)
```

## Demo (Project 1)
```bash
cd 01-nginx-basic-chart
helm lint .
helm template nginx-demo . -n demo
```
