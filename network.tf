resource "google_compute_network" "my-lab-vpc" {
    project = var.project
    name = var.network_name
    description = "VPC for the lab prject"
    auto_create_subnetworks = false
} 
