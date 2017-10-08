#
#    CONFIGURE OPEN STACK PROVIDER
#

provider "openstack" {
  tenant_name = "${var.openstack_project_name}"
  user_name   = "${var.openstack_user_name}"
  password    = "${var.openstack_password}"
  auth_url    = "${var.openstack_auth_url}"
}

#
#
#    CREATE NETWORK and SUBNET
#
#
resource "openstack_networking_network_v2" "network_1" {
  name           = "${var.internet-access}"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_1" {
  network_id      = "${openstack_networking_network_v2.network_1.id}"
  cidr            = "${var.subnet_1_lan}"
  dns_nameservers = ["${var.dns}"]
  ip_version      = 4
  enable_dhcp     = true
  depends_on      = ["openstack_networking_network_v2.network_1"]
}

#
#
#    CREATE ROUTER and INTERFACES
#
#
resource "openstack_networking_router_v2" "internet_router" {
  name = "${var.internet_router}"
  admin_state_up   = "true"
  external_gateway = "${var.openstack_gateway}"
  depends_on       = ["openstack_networking_subnet_v2.subnet_1"]
}

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id  = "${openstack_networking_router_v2.internet_router.id}"
  subnet_id  = "${openstack_networking_subnet_v2.subnet_1.id}"
  depends_on = ["openstack_networking_router_v2.internet_router"]
}
