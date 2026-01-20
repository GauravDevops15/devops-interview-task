#I created this task with all the installation and requirements mentioned in the file shared.



## DevOps Interview Task – Minikube + Terraform

## Overview
This project demonstrates deploying a Node.js microservice on Kubernetes using Terraform, with full observability (monitoring, logging, autoscaling) and CI orchestration via GitHub Actions.

The setup is implemented and tested on a Minikube cluster.

---

## Architecture
- **Application**: Node.js + Express (`/health`, `/metrics`)
- **Platform**: Kubernetes (Minikube)
- **IaC**: Terraform
- **Monitoring**: Prometheus Operator + Grafana
- **Logging**: Fluent Bit → Elasticsearch → Kibana
- **Autoscaling**: HPA (CPU-based)
- **CI**: GitHub Actions (Terraform fmt, validate, plan)

---

## Application
- Deployment with 3 replicas
- `/health` endpoint returns:
  ```json
  {
    "status": "healthy",
    "pod": "<pod-name>"
  }


