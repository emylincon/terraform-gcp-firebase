# resource "google_app_engine_application" "app" {
#   project       = var.project_id
#   location_id   = "us-central"
#   database_type = CLOUD_FIRESTORE #"CLOUD_FIRESTORE"
# }

# resource "random_string" "random" {
#   length = 10
# }

resource "google_firestore_document" "mydoc" {
  project     = var.project_id2
  collection  = "somenewcollection"
  document_id = "87689hjkg98678" #random_string.random.result
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}

# resource "google_project_service" "firestore" {
#   service                    = "firestore.googleapis.com"
#   disable_dependent_services = true
# }
