resource "google_project" "tc_project" {
  name            = "TC Project"
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account
}

resource "google_project_service" "services" {
  for_each = toset(var.services)
  project  = google_project.tc_project.project_id
  service  = each.value
}
