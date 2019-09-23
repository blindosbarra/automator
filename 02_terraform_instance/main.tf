provider "google" {
 credentials = "${file("token.json")}"
 region  = "${var.region}"
 zone    = "${var.zone}"
 project = "${var.project_id}"
}