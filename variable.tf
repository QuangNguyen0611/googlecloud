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

variable "zone" {
    description = "The Google Cloud zone to deploy resources in."
    type        = string
    default     = "asia-southeast1-a"
}

