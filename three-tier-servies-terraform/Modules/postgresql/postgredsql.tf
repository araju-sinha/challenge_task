resource "google_sql_database_instance" "pgsql_database" {
  name = "var.name"
  database_version = "var.db_version"
  region           = "var.region"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}