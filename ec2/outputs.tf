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