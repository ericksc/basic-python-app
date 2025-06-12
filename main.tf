provider "google" {
  project = "basic-python-app-462701"
  region  = "us-central1"
  # Optionally, specify credentials or let Terraform use GOOGLE_APPLICATION_CREDENTIALS
  # credentials = file("<PATH_TO_SERVICE_ACCOUNT_JSON>")
}


resource "google_storage_bucket" "my-bucket" {
  name                        = "my-basic-app-python-bucket"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true

  public_access_prevention = "enforced"
}