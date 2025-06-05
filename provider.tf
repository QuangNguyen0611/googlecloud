#chúng ta có thể tạo 1 file json để login into google cloud
#khi download key từ google cloud thì sẽ có file json
#sau đó copy nội dung từ trong file json và tạo ra 1 file key.json để cùng hàng với file root main

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.38.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region

}
