# module "ec2_instance" {
#   source = "terraform-aws-modules/ec2-instance/aws"

#   name = var.ec2_name

#   create_spot_instance = true
#   spot_price           = var.spot_price
#   spot_type            = var.spot_type

#   instance_type = var.instance_type
#   #   key_name      = var.key_name RESEARCH WHY THE KEYS ARE BEGIN USED 
#   monitoring = false
#   subnet_id  = var.subnet_id

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }      

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = var.ec2_name

  instance_type = var.instance_type
  # key_name      = "user1"
  monitoring = false
  subnet_id  = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}