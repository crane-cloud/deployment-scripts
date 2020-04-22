// Configure the Google Cloud Provider
provider "google" {
    credentials = var.credentials
    project = var.project_id
    region = var.region
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