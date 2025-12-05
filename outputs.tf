output "project_id" {
  description = "Project ID"
  value       = google_project.tc_project.project_id
}

output "subnetwork_self_link" {
  description = "Subnetwork Self-Link"
  value       = google_compute_subnetwork.subnetwork_1.self_link
}
