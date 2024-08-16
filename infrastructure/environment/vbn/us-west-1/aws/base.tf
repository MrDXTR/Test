module "base" {
  # Source of the Terraform module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_base?ref=main"

  # List of private IPv4 CIDR blocks for the VPC
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # List of public IPv4 CIDR blocks for the VPC
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block = "10.0.0.0/16"

  # Log retention period in days
  vpc_log_retention = 90

  # Environment name
  env_name = "vbn-us-west-1"

  # Layer name
  layer_name = "vbn-us-west-1"

  # Module name
  module_name = "base"
}