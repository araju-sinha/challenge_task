name = "var.name"
  database_version = "var.db_version"
  region           = "var.region"


variable "name" {
    description = "The name of the database instnace"
}

variable "database_version" {
    description = "Version of database "
}

variable "region" {
    description = "The region in which the db instance will be created"
}