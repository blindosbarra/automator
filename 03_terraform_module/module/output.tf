output "instance_priv_ip_addr" {
  value = "${google_compute_instance.instance.network_interface.0.network_ip}"
}