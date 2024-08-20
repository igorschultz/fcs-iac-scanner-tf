variable "project" {
    type= string
    description = "ID Google project"
}

variable "region" {
    type= string
    description = "Region Google project"
    default = "us-central1"
}

variable "zone" {
  type = string
  description = "GCP zone"
  default = "us-central1-c"
}