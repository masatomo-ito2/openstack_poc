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
  default = "public-floating-net"
}

variable "prefix" {
	default = "demo-local"
}
