variable "project_name" {
  default = "devops-test-274316"
}
provider "google" {
  project     = var.project_name
  region      = "us-central1"
  zone        = "us-central1-c"
  credentials = "${file("credentials.json")}"
}
