resource "google_compute_network" "vpc_network" {
  project                 = google_project.tc_project.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = false
  depends_on              = [google_project_service.services]
}

resource "google_compute_subnetwork" "subnetwork_1" {
  project       = google_project.tc_project.project_id
  name          = var.subnet_name
  region        = var.region
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.vpc_network.id
}
