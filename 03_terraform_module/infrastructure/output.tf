output "instance_priv_ip_addr" {
  value = "${module.instance_frontend.instance_private_ip_address}"
}