terraform {
  required_version = ">=1.9"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "6.43.0"
    }
  }
}
