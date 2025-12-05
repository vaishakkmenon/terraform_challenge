resource "google_storage_bucket" "bucket_1" {
  name                        = "${google_project.tc_project.project_id}-${var.bucket_name}"
  project                     = google_project.tc_project.project_id
  location                    = var.region
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  depends_on                  = [google_project_service.services]
}
