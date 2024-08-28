```hcl
# This Terraform configuration sets up an AWS EC2 instance
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }
}

output "instance_id" {
  description = "The ID of the AWS EC2 instance"
  value       = aws_instance.my_instance.id
}
```