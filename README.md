## This project will attempt to create a VPC Network, an EC2 Instance, configure it to be a VPN Endpoint and then I will be able to use it as a VPN for my laptop.

Progress update: 
 - At this point I am able to create the vpc and the ec2 instance with the security group rules. 
 - the problem of not being able to "connect" to the vm from the console was fixed by allowing SSH (but that needds to be reasearched and fixed)
 - Next steps are to first:
 - Configure the OpenVPN Client on the VM by hand
 - Then turn the commands into an Ansible playbook or a startup script.
