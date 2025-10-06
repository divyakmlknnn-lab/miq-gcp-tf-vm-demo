provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = var.gcp_credentials_json  # raw JSON from key.json
}

resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-12"
      size  = 10
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = { enable-oslogin = "TRUE" }
}
