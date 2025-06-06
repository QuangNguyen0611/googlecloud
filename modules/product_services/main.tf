#thay vì dùng UI eable API thì chúng ta có thể dùng terraform để enable API
#nhớ rằng chúng ta có thể tạo ra nhiều project khác nhau bang cách thay đổi project_id
#ngoài ra, chúng ta có thể tạo nhiều service folder khác nhau để quản lý các project khác nhau
resource "google_project_service" "compute_api" {
  project = var.project_id
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}