# docker-k8s-flask-app
 A project to deploy a containerized Flask web application using Docker and Kubernetes. It includes Docker image creation, Kubernetes deployment, LoadBalancer Service for external access, and scaling capabilities. Ideal for understanding container orchestration with Kubernetes on a simple Flask app.

## Project Structure
my-k8s-project/ ├── app.py # Flask web application ├── Dockerfile # Dockerfile for 
containerizing the app ├── deployment.yaml # Kubernetes deployment file ├── service.yaml #
Kubernetes service file ├── setup.sh # Bash script to automate setup ├── cleanup.sh # Bash
script to clean up resources └── README.md # Project documentation

## Getting Started

### Prerequisites

- Docker
- Kubernetes (kubectl)
- Minikube (for local deployment)
- A Docker Hub account

### Setup and Deployment

1. **Build and Push Docker Image**

    ```bash
    ./setup.sh
    ```

2. **Deploy to Kubernetes**

    ```bash
    kubectl apply -f deployment.yaml
    kubectl apply -f service.yaml
    ```

3. **Access the Application**

    - For Minikube, use: `minikube service flask-service`
    - For cloud providers, retrieve the external IP from `kubectl get services`

### Cleaning Up

To delete the resources and stop Minikube:

```bash
./cleanup.sh

