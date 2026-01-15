# Project 3 — CI/CD: GitHub Actions + Helm Deploy to EKS

This project demonstrates a GitHub Actions workflow that deploys (upgrade/install) a Helm chart to an EKS cluster.

## GitHub Secrets to Create
- `AWS_REGION` (e.g., `us-east-1`)
- `EKS_CLUSTER` (EKS cluster name)
- `AWS_ROLE_TO_ASSUME` (IAM role ARN for GitHub OIDC)

## Deploy
Workflow file:
- `.github/workflows/deploy.yaml`
