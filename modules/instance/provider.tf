#gcloud auth application-default login
#export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"


terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.38.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  #zone    = var.zone-a
  #credentials = file("credentials.json")
}
