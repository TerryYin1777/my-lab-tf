terraform {
  backend "local" {
  }
 
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.59.0"
    }
  }
}
 
provider "google" {
  credentials = file("/Users/terryyin/my-lab/my-lab-382405-471ab9c3f191.json")
  project = var.project
  region = var.region
}


