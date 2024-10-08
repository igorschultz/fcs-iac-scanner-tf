provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_storage_bucket" "bucket" {
  project       = var.project
  name          = "${var.project}-iac-scanner-demo-bucket"
  force_destroy = false
  location      = var.region
}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.bucket.name
  role   = "READER"
  entity = "allUsers"
}