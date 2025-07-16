terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.2.1"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "local" {
  name       = "hextris-cluster"
  node_image = "kindest/node:v1.29.0"

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"

      extra_port_mappings {
        container_port = 80
        host_port      = 30080
        listen_address = "0.0.0.0"
        protocol       = "TCP"
      }
    }

    node {
      role = "worker"
    }
  }
}
