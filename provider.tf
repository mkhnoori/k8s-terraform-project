provider "kubernetes" {
  host = minikube_cluster.minikube-docker.host
  client_certificate = minikube_cluster.minikube-docker.client_certificate
  client_key = minikube_cluster.minikube-docker.client_key
  cluster_ca_certificate = minikube_cluster.minikube-docker.cluster_ca_certificate
}