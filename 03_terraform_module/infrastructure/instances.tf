// A single Google Cloud Engine instance
module "instance_frontend" {
  source = "git::ssh://USER@source.developers.google.com:2022/p/PROJECT/r/REPOSITORY"
  name = "${var.name}frontend"
  project_id = "${var.project_id}"
  region = "${var.region}"
  zone = "${var.zone}"
  tags = "${var.tags}"
  os = "${var.os}"
  machine_type = "${var.machine_type}"
}