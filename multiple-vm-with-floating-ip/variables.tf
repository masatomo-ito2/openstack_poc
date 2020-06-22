variable "image" {
  default = "ubuntu-18.04"
}

variable "flavor" {
  default = "m1.small"
}

/*
variable "ssh_key_file" {
  default = "~/.ssh/id_rsa"
}
*/

variable "ssh_user_name" {
  default = "ubuntu"
}

variable "pool" {
  #default = "public"
  default = "public-floating-net"
}

variable "instance_count" {
  default = 2
}

variable "network_name" {
  default = "my-network"
}

variable "instance_prefix" {
  default = "multi"
}

#XXX Added

variable "prefix" {
  default = "demo2"
}
