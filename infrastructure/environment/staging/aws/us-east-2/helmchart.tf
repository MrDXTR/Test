# This Terraform configuration provisions an AWS EC2 instance with proper documentation.

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

# Outputs
output "instance_id" {
  description = "The ID of the AWS Instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "The public IP address of the AWS Instance"
  value       = aws_instance.example.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the AWS Instance"
  value       = aws_instance.example.private_ip
}