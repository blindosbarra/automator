terraform {
  backend "gcs" {
    bucket = "${BUCKET_STATE}"
    prefix = "${PREFIX}/state"
    project = "${PROJECT_ID}"
    credentials = "${JSON_FILENAME}"
  }
}
