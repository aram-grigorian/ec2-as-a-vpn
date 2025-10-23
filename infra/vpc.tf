module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpn_vpc
  cidr = var.main_cidr

  azs             = var.azs_list
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}