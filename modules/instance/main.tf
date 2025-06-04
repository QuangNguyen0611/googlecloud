resource "google_compute_instance" "qthn-instance" {
  name         = "qthn-instance"
  machine_type = "n2-standard-2"
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network    = var.network_id
    subnetwork = var.subnetwork_id

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }
}
