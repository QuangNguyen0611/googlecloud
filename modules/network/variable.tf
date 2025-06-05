variable "project_id" {
  description = "The ID of the Google Cloud project to use."
  type        = string
  default     = "terraform-gcp-461910"
}

variable "region" {
  description = "The Google Cloud region to deploy resources in."
  type        = string
  default     = "asia-southeast1"
}
variable "network_name" {
  description = "The name of the network to create."
  type        = string
  default     = "qthn-network"
}
variable "subnetwork_name" {
  description = "The name of the subnetwork to create."
  type        = string
  default     = "qthn-subnetwork"
}