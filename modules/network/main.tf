resource "google_compute_network" "qthn-network" {
  name                    = var.network_name
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "qthn-subnetwork" {
  name          = var.subnetwork_name
  region        = var.region
  network       = google_compute_network.qthn-network.self_link
  ip_cidr_range = "10.0.0.0/16"

}
