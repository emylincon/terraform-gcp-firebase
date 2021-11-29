

# Use firestore
# resource "google_app_engine_application" "app" {
#   provider      = google-beta
#   location_id   = var.location_id
#   database_type = "CLOUD_FIRESTORE"
# }

# resource "google_project_service" "firestore" {
#   service                    = "firestore.googleapis.com"
#   disable_dependent_services = true
#   project                    = var.project_id
# }

resource "google_firestore_document" "mydoc" {
  project     = var.project_id
  collection  = "somenewcollection"
  document_id = "87689hjkg98678" #random_string.random.result
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
