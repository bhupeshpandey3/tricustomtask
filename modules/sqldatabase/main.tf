
resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.tricustom.name
}

resource "google_sql_database_instance" "tricustom" {
  name             = var.sqldb
  region           = "us-central1"
 database_version = "MYSQL_8_0"
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    disk_size  = 10
    availability_type = "ZONAL"
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_vpc
    }
  }
}

resource "google_sql_user" "db_users" {
  name     = "tricustom"
  instance = google_sql_database_instance.tricustom.name
  password = "solution"
}

