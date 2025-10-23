output "vpn_instance_id" {
  value = module.ec2_instance.id
}

output "vpn_public_ip" {
  value = module.ec2_instance.public_ip
}

output "vpn_private_ip" {
  value = module.ec2_instance.private_ip
}

output "vpn_public_dns" {
  value = module.ec2_instance.public_dns
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "private_subnet_ids" {
  value = module.vpc.private_subnets
}

output "vpc_id" {
  value = module.vpc.vpc_id
}