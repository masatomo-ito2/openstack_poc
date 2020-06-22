output "address" {
  value = "${openstack_networking_floatingip_v2.terraform.address}"
}

output "ssh_public_key" {
  value = "${tls_private_key.ssh.public_key_openssh}"
}

output "ssh_private_key" {
  value = "${tls_private_key.ssh.private_key_pem}"
}
