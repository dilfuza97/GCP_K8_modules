resource "google_container_cluster" "gcpcluster" {
  project    = "linux-classs"
  name       = "gcpcluster"
  network    = "default"
  subnetwork = "default"
  zone       = "us-east1-b"

  # additional_zones = "${var.additional_zones}"

  master_auth {
    username = "admin"
    password = "StrongP1~assworafasfweaqg32d"
  }
  addons_config {
    http_load_balancing {
      disabled = false
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    kubernetes_dashboard {
      disabled = true
    }
  }
  node_pool {
    name       = "default-pool"
    node_count = 2

    autoscaling {
      min_node_count = 1
      max_node_count = 3
    }
  }
}

# resource "random_string" "password" {
#   length  = 16
#   special = true
#   number  = true
#   lower   = true
#   upper   = true
# }
