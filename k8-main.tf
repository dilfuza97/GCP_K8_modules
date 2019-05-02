resource "google_container_cluster" "gcpcluster" {
  project    = "linux-classs"
  name       = "gcpcluster"
  network    = "default"
  subnetwork = "default"
  zone       = "us-central1-a"

  # additional_zones = "${var.additional_zones}"

  master_auth {
    username = "admin"
    password = "StrongP1~assworafasfweaqg32d"
  }
  initial_node_count = "2"
  node_config {
    # machine_type = ""
    # oauth_scopes = [  #   "https://www.googleapis.com/auth/compute",  #   "https://www.googleapis.com/auth/devstorage.read_only",  #   "https://www.googleapis.com/auth/logging.write",  #   "https://www.googleapis.com/auth/monitoring",  # ]
  }
}

# resource "random_string" "password" {
#   length  = 16
#   special = true
#   number  = true
#   lower   = true
#   upper   = true
# }
