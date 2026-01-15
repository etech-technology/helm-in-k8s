# Module 01 — Helm Basics (Lecture + Demo)

## Learning Objectives
- Explain what Helm is and why teams use it
- Run core Helm commands (`install`, `upgrade`, `rollback`, `uninstall`)
- Understand a **release**

## What Helm Solves
Helm helps you manage:
- lots of YAML
- multiple environments
- frequent changes

**Helm = package manager for Kubernetes**
- Chart = reusable package
- Release = installed instance
- Values = configuration inputs

## Key Terms
- Chart, Values, Release, Repository

## Demo
```bash
helm version
helm help
helm create demo-chart
tree demo-chart
```

## Quick Check
1) What is a Helm release?
2) Why use values instead of hardcoding?
