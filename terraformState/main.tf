terraform {
  backend "gcs" {
    bucket = "backend-terraform-state-emeka"
    prefix = "terraform/state"
  }
}

resource "google_storage_bucket" "static-site" {
  name          = "emeka-test-bucket-1199"
  location      = "EU"
  force_destroy = true
  project       = var.project_id

  uniform_bucket_level_access = true

}
