terraform {
  backend "gcs" {
    bucket = "tf_state_repo"
    prefix = "tf"
    credentials = "data.json"
  }
}