terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.10"
    }
  }
}
provider "minikube" {
  kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube-docker" {
  driver = "docker"
  cluster_name = "complete-devops-project"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}