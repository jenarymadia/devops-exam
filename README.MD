# 🎮 Hextris Deployment on Kubernetes with Kind, Docker, and Helm

## Overview

hextris-deployment/
├── Dockerfile
├── terraform/
│   └── main.tf
├── helm/
│   ├── Chart.yaml
│   ├── values.yaml
│   └── templates/
│       ├── deployment.yaml
│       └── service.yaml
└── README.md

## Prerequisites

Install the following tools:
- [Docker](https://www.docker.com/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Kind](https://kind.sigs.k8s.io/)
- [Helm](https://helm.sh/)

---

1. cd terraform
2. terraform init
3. terraform apply -auto-approve
4. cd ..
5. git clone https://github.com/Hextris/hextris.git
5. docker build -t hextris .
6. kind load docker-image hextris --name hextris-cluster
7. helm install hextris ./helm
8. kubectl port-forward svc/hextris 8080:80