terraform {
  backend "gcs" {
    bucket = "terraform-state-iac-cicdproject"
    prefix = "terraform/state"
  }
}