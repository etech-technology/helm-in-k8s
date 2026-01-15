# Instructor Guide — Helm Week

## Rhythm
- Concept (5–10 mins) → Demo (5–10 mins) → Lab (20–30 mins) → Troubleshoot (10–15 mins)

## Troubleshooting Cheatsheet
```bash
helm lint .
helm template <release> . -n <ns>
helm status <release> -n <ns>
helm get values <release> -n <ns>
helm get manifest <release> -n <ns>
kubectl describe pod ...
```

## Common Issues
- Namespace missing
- Wrong image repo/tag
- YAML indentation in templates
- Ingress controller not installed
