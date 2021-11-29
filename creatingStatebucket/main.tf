terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.1.0"
    }
  }
}

provider "google" {
  project = var.project_id
  #location = "EU"
}

resource "google_storage_bucket" "static-site" {
  name          = "backend-terraform-state-emeka"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

}
