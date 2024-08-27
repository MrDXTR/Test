# This Terraform configuration sets up an AWS EC2 instance with a security group and key pair.

provider "aws" {
  region = "us-west-2"
}

resource "aws_key_pair" "my_key" {
  key_name   = "my_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEArYJzQzY3DDGgK1Fi5g2Eq4fMxGaHCbdWIzv9GbbxzgdEuXRgfTLz8ZQ1gTaN3Yp5n5d+7gkC5RHIFiIc9mJt3uk4L5gwM/UztsjEt8yb3bOzZ0Lq8GS+dTBL9XYNorPiK5up3Sx/J0aSCHpt8ZxVRLTaihVKBHlDH36NhCkleXNISv0Nc2JGQdO/8X5RyInswmE/BU7XyfgpaC5uw== rsa-key-20220406"
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.my_key.key_name

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Terraform Example"
  }
}