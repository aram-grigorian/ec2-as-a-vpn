variable "ec2_name" {
  description = "Name of the created EC2 instance"
  type        = string
}

# variable "spot_price" {
#   description = "Price of the created EC2 SPOT instance"
#   type        = string
# }

# variable "spot_type" {
#   description = "Spot Type of the created EC2 SPOT instance"
#   type        = string
# }

variable "instance_type" {
  description = "Type of the created EC2 SPOT instance"
  type        = string
}

# variable "key_name" {
#   description = "Name of the key attached to the EC2 Instance"
#   type        = string
# }

variable "region" {
  description = "AWS Region"
  type = string
}

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