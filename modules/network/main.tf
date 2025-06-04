resource "google_compute_network" "qthn-network" {
  name                    = "qthn-network"
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "qthn-subnetwork" {
  name          = "qthn-subnetwork"
  region        = var.region
  network       = google_compute_network.qthn-network.id
  ip_cidr_range = "10.0.0.0/16"

}
