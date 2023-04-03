resource "google_compute_network" "my-lab-vpc" {
    project = var.project
    name = "my-lab-vpc"
    description = "VPC for the lab prject"
    auto_create_subnetworks = false
} 

resource "google_compute_subnetwork" "my-lab-subnet" {
    name = "my-lab-subnet"
    network = google_compute_network.my-lab-vpc.id
    ip_cidr_range = "10.10.0.0/16"
    region = var.region
}
