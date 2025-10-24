module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  ami           = data.aws_ssm_parameter.al2023.value
  name = var.ec2_name

  instance_type = var.instance_type
  key_name      = "vpn-ec2-key"
  monitoring                  = false
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  security_group_ingress_rules = {
    ssh = {
      # cidr_ipv4   = "0.0.0.0/0"
      cidr_ipv4   = local.my_ip 
      from_port   = 22
      to_port     = 22
      ip_protocol = "tcp"
    }
    openvpn_tcp = {
      cidr_ipv4   = local.my_ip
      from_port   = 443
      to_port     = 443
      ip_protocol = "tcp"
    }
    openvpn_udp = {
      cidr_ipv4   = local.my_ip
      from_port   = 1194
      to_port     = 1194
      ip_protocol = "udp"
    }
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}