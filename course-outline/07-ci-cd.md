# Module 07 — Helm in CI/CD (GitHub Actions)

## Project 3
Workflow:
- `03-ci-cd-helm-pipeline/.github/workflows/deploy.yaml`

Core command:
```bash
helm upgrade --install webapp ./helm -n demo --set image.tag=$GITHUB_SHA
```

## Best Practice
Use GitHub OIDC with `aws-actions/configure-aws-credentials`.
