// create postgres database instance
resource "google_sql_database_instance" "cranecloud-database" {
    name = var.sqlinstance
    database_version = "POSTGRES_11"
    region = "us-central1"

    settings {
        tier = "db-custom-1-3840"
        disk_autoresize = true
        ip_configuration {
            ipv4_enabled = true

            authorized_networks {
                name = "all"
                value = "0.0.0.0/0"
            }
        } 
    }
}

// create database
resource "google_sql_database" "cranecloud-database" {
    name = "cranecloud-staging-db"
    instance = google_sql_database_instance.cranecloud-database.name
    charset = "UTF8"
    collation = "en_US.UTF8"
}

// create database user
resource "google_sql_user" "cranecloud-database-user" {
    name = var.database_user
    password = var.database_password
    instance = google_sql_database_instance.cranecloud-database.name
    host = ""
}