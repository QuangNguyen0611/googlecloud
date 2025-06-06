#gcloud auth application-default login
#export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"

# This Terraform configuration creates a Google Compute Engine instance with a local SSD disk.
resource "google_compute_instance" "qthn-instance" {
  project      = var.project_id
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
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
#giúp có địa chỉ extenal IP
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }
}
