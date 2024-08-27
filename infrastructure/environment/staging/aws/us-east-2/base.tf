variable "aws_region" {
  description = "The AWS Region to deploy resources"
  type        = string
  default     = "us-west-2"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  
  tags = {
    Name = "WebServerInstance"
  }
}

output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.web_server.id
}