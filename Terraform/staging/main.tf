// Configure the Google Cloud Provider
provider "google" {
    credentials = var.credentials
    project = "crane-cloud-272420"
    region = "us-central1"
}



// Configure Terraform Backend
terraform {
    backend "remote" {
        organization = "cranecloud"
        workspaces {
            name = "cranecloud-staging"
        }
    }
}