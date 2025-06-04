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


variable "network_id" {
  description = "The ID of the network to attach the instance to."
  type        = string
}

variable "subnetwork_id" {
  description = "The ID of the subnetwork to attach the instance to."
  type        = string
}

variable "zone" {
  description = "The Google Cloud zone to deploy the instance in."
  type        = string
}
