variable "project_id" {
    type = string
    default = "crane-cloud-274413"
}

variable "credentials" {
    type = string
}

variable "region" {
    type = string
    default = "us-central1"
}

variable "zone" {
    type =  string
    default = "us-central1-a"
}

variable "cluster" {
    type = string
    default = "staging-cluster"
}

variable "sqlinstance" {
    type = string
    default = "staging-db"
}

variable "database_password" {
    type = string
}

variable "database_user" {
    type = string
}

variable "node_count" {
    type = number
    default = 2
}

variable "database_name" {
    type = string
    default = "cranecloud-staging-db"
}

variable "prod_database_name" {
    type = string
    default = "cranecloud-production-db"
}