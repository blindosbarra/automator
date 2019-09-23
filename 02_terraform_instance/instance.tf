// A single Google Cloud Engine instance
resource "google_compute_instance" "instance" {
 name         = "vm-${var.name}"
 machine_type = "${var.machine_type}"
 zone         = "${var.zone}"
 allow_stopping_for_update = "${var.allow_stopping_for_update}"
 tags = "${var.tags}"

 boot_disk {
   initialize_params {
     image = "${var.os}"
   }
 }

 network_interface {
   network = "${var.network}"

 }
}