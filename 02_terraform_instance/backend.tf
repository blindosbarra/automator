terraform {
  backend "gcs" {
    bucket = "BUCKET_NAME"
    prefix = "tf"
    credentials = "FILE.json"
  }
}