output "network_id" {
  description = "The ID of the created network."
  value       = google_compute_network.qthn-network.id
}

output "subnetwork_id" {
  description = "The ID of the created subnetwork."
  value       = google_compute_subnetwork.qthn-subnetwork.id
}