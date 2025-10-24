## This project will attempt to create a VPC Network, an EC2 Instance, configure it to be a VPN Endpoint and then I will be able to use it as a VPN for my laptop.

Progress update: 
 - At this point I am able to create the vpc and the ec2 instance with the security group rules. 
 - the problem of not being able to "connect" to the vm from the console was fixed by allowing SSH (but that needds to be reasearched and fixed)
 - Next steps are to first:
 - Configure the OpenVPN Client on the VM by hand
 - I just fixed the issue with allowing ssh for 0.0.0.0/0, now I only allow it from my ip which is configured through data resource which grabs my local IPv4 address
 - For now I generate the ssh key, import it as an AWS Key and Point the key-name attribute to the local file
 - Then I just use the passphrase when sshing into the vm: ssh -i file-path ec2-user@public.ip
 - Then turn the commands into an Ansible playbook or a startup script.
