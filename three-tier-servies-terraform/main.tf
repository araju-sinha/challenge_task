provider "google" {
  project = "${var.var_project}"
  region  = "${var.region}"
  zone    = "${var.zone}"
  credentials = "credentials.json"
}


module "vpc" {
  source =       "./Modules/VPC"
  name   =       var.name
  subnet_cidr =  var.subnet_cidr
  region      =  var.region
}


module "compute_instance" {
source = "./Modules/Compute Instance"
name          = "var.name"
machine_type  = "var.machine_type"
zone          = "var.zone"
image         = "var.image"
type          = "var.type"
size          = var.size
network       = "var.network"
}

module "database" {
  source = "./Modules/postgresql"
  name = "var.name"
  database_version = "var.db_version"
  region           = "var.region"
}

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}