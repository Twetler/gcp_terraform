terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = "cloud-eng-1"
  region  = "europe-west1"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

