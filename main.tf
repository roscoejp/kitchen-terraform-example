/*******************************************
    Google Storage Bucket Configuration
*******************************************/
resource "google_storage_bucket" "storage_bucket" {
  name          = "${var.bucket_name}"
  project       = "${var.project_id}"
}