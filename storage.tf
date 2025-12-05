resource "google_storage_bucket" "bucket_1" {
  name                        = "${var.project_id}-${var.bucket_name}"
  project                     = google_project.tc_project.project_id
  location                    = var.region  
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
