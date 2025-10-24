resource "aws_key_pair" "this" {
    key_name = "vpn-ec2-key"
    public_key = file("~/.ssh/ec2-vpn.pub")
  
}