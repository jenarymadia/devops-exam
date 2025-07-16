# 🎮 Hextris Deployment on Kubernetes with Kind, Docker, and Helm

## Prerequisites

Install the following tools:
- [Docker](https://www.docker.com/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Kind](https://kind.sigs.k8s.io/)
- [Helm](https://helm.sh/)

---

## Deployment Steps

1. Clone this repository  

   `git clone https://github.com/YOUR_USERNAME/hextris-deployment.git && cd hextris-deployment`

2. Clone the Hextris source code  

   `git clone https://github.com/Hextris/hextris.git`

3. Create a Kind Kubernetes cluster using Terraform  
   ```bash
   cd terraform  
   terraform init  
   terraform apply -auto-approve  
   cd ..

4. Build the Docker image

   `docker build -t hextris .`

5. Load the image into the Kind cluster

    `kind load docker-image hextris --name hextris-cluster`

6. Deploy Hextris using Helm

    `helm install hextris ./helm`

7. Access the game locally

    `kubectl port-forward svc/hextris 8080:80`

8. Open in browser: http://localhost:8080
