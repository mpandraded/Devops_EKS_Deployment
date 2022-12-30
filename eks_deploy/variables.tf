variable "cidr_block" {
  default = "192.168.7.0/24"
}

variable "private_subnets" {
  default = ["192.168.7.0/28", "192.168.7.16/28", "192.168.7.32/28"]
}

variable "public_subnets" {
  default = ["192.168.7.48/28", "192.168.7.64/28",""]
}

variable "cluster_version" {
  type = string
  default = "1.22"
}

variable "cluster_name" {
 type = string
 default = "openbanking-prod-brazil"
}

variable "amiID" {
  type    = string
  default = "ami-0a76dbe62e83d9108"
}

variable "instance_type" {
  type    = string
  default = "t2.xlarge"
}
variable "key_name" {
  default = "openbanking_key"
  type    = string
}

variable "resource_name" {
  default = "openbanking-prod-brazil"
  type    = string
}

variable "project_name" {
  default = "openbanking-prod-brazil"
  type    = string
}