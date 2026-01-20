\# DevOps Interview Task – Minikube + Terraform task



\##I created this task with all the installation and requirements mentioned in the file shared.



\## Overview

This project shows deploying the Node.js micro-service on Kubernetes using Terraform and with full observability (monitoring, logging, autoscaling) as requested and CI orchestration on GitHub Actions.



The setup is implemented and tested on a Minikube cluster



---



\## Architecture

\- \*\*Application\*\*: Node.js + Express (`/health`, `/metrics`)

\- \*\*Platform\*\*: Kubernetes (Minikube)

\- \*\*IaC\*\*: Terraform

\- \*\*Monitoring\*\*: Prometheus Operator + Grafana

\- \*\*Logging\*\*: Fluent Bit → Elasticsearch → Kibana

\- \*\*Autoscaling\*\*: HPA (CPU-based)

\- \*\*CI\*\*: GitHub Actions (Terraform fmt, validate, plan)



---



\## Application

\- Deployment with 3 replicas

\- `/health` endpoint returns:

&nbsp; ```json

&nbsp; {

&nbsp;   "status": "healthy",

&nbsp;   "pod": "<pod-name>"

&nbsp; }

