output "instance_private_ip_address" {
  value = "${google_compute_instance.instance.network_interface.0.network_ip}"
}