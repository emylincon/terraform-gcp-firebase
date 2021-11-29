
# resource "google_firebase_project" "default" {
#   provider = google-beta
# }

# resource "google_firebase_project_location" "basic" {
#   provider = google-beta
#   project  = google_firebase_project.default.project

#   location_id = "us-central1"
# }

# resource "google_project" "my_project" {
#   name       = "tf-test-project111"
#   project_id = "ae-project"
# }

# create once and cannot delete
# resource "google_app_engine_application" "app" {
#   project       = var.project_id2
#   location_id   = "us-central"
#   database_type = "CLOUD_FIRESTORE"
# }

resource "google_app_engine_firewall_rule" "rule" {
  project      = var.project_id2
  priority     = 1000
  action       = "ALLOW"
  source_range = "*"
}

