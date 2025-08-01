terraform {
  required_version = ">=1.9"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.43.0"
    }
  }
  backend "gcs" {
    bucket = "gcplearn1996-tfstate"
    prefix = "env/prod"
  }
}

# Terraform Provider Block
provider "google" {
  project = var.gcp_project
  region  = var.gcp_region1
}
