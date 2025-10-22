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

variable "subnet_id" {
  description = "ID of the Subnet in which the Instance will be created"
  type        = string

}

