terraform {
  required_version = "1.6.2"

  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.11.0"
    }
  }

  backend "kubernetes" {
    secret_suffix    = "state"
    config_path      = "/etc/rancher/k3s/k3s.yaml"
  }
}