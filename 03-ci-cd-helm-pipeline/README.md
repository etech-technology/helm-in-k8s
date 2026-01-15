# Project 3 — CI/CD: GitHub Actions + Helm Deploy to EKS

This project demonstrates a GitHub Actions workflow that deploys (upgrade/install) a Helm chart to an EKS cluster.

## Recommended Auth (Best Practice)
Use **GitHub OIDC** + an IAM role. If you prefer access keys, you can also use:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

## GitHub Secrets to Create
- `AWS_REGION` (e.g., `us-east-1`)
- `EKS_CLUSTER` (EKS cluster name)

For OIDC role-based auth, add:
- `AWS_ROLE_TO_ASSUME` (IAM role ARN)

## Deploy Flow
1. Build & push your image (to ECR or any registry)
2. The workflow deploys the chart, setting `image.tag` to the Git commit SHA
