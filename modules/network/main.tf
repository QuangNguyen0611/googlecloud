resource "google_compute_network" "qthn-network" {
  name                    = var.network_name
#không tự tạo subnetwork
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "qthn-subnetwork" {
  name          = var.subnetwork_name
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
  network       = google_compute_network.qthn-network.id
#định nghĩa một dải IP phụ, thường dùng cho các dịch vụ như Cloud SQL, Kubernetes Engine
  secondary_ip_range {
    range_name    = "ip-cidr-range"
    ip_cidr_range = "192.168.10.0/24"
  }
  depends_on = [google_compute_network.qthn-network]
}
