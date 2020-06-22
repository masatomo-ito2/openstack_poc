data "openstack_networking_network_v2" "terraform" {
  name = var.pool
}

resource "openstack_networking_network_v2" "terraform" {
  name           = "${var.prefix}-terraform"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "terraform" {
  name            = "${var.prefix}-terraform"
  network_id      = openstack_networking_network_v2.terraform.id
  cidr            = "10.0.1.0/24"
  ip_version      = 4
  dns_nameservers = ["8.8.8.8", "8.8.4.4"]
}

resource "openstack_networking_router_v2" "terraform" {
  name                = "${var.prefix}-terraform"
  admin_state_up      = "true"
  external_network_id = data.openstack_networking_network_v2.terraform.id
}

resource "openstack_networking_router_interface_v2" "terraform" {
  router_id = openstack_networking_router_v2.terraform.id
  subnet_id = openstack_networking_subnet_v2.terraform.id
}
