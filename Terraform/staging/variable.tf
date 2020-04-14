variable "credentials" {
    type = string
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