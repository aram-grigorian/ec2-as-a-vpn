variable "vpn_vpc" {
  description = "Name of the VPC for the VPN EC2 Instance"
  type        = string
}

variable "main_cidr" {
  description = "Main CIDR Block of the VPC"
  type        = string
}

variable "azs_list" {
  description = "List of AZs"
  type        = list(any)
}

variable "public_subnets" {
  description = "List of Public subnets"
  type        = list(any)
}

variable "private_subnets" {
  description = "List of Private subnets"
  type        = list(any)
}