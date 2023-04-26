resource "google_compute_instance" "vm_instance" {
  name         = "var.name"
  machine_type = "var.machine_type"
  zone         = "var.zone"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "var.image"
      type  = "var.type"
      size =  10
      labels = {
        environment = "dev"
        }
    }
  }
  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }

  metadata = {
    foo = "bar"
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}



