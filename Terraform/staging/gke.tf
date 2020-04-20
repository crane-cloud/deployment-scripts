// The kubernetes cluster using default node pool
resource "google_container_cluster" "cranecloud-gke" {
    name = var.cluster
    location = var.zone
    initial_node_count = var.node_count

    master_auth {
        username = ""
        password = ""

        client_certificate_config {
            issue_client_certificate = false
        }
    }

    node_config {
        oauth_scopes =[
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]

        tags = ["cranecloud-cluster"]
        machine_type = "n1-standard-1"
        
    }

}
