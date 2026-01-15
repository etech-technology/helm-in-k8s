# Capstone — CI/CD Deploy to EKS (Project 3)

## Tasks
1) Push repo to GitHub
2) Add GitHub secrets (AWS_REGION, EKS_CLUSTER, AWS_ROLE_TO_ASSUME)
3) Push to main and confirm workflow deploys `webapp`
4) Edit `replicaCount`, push again, and check `helm history`

## Verify
```bash
helm list -n demo
helm history webapp -n demo
kubectl get pods -n demo
```
