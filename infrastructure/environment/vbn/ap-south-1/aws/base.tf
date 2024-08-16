# This module configures base VPC infrastructure with specified CIDR blocks, VPC log retention, and environment-specific names.
module "base" {
  source                     = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  
  # List of private IPv4 CIDR blocks to be used in the VPC
  private_ipv4_cidr_blocks   = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]
  
  # List of public IPv4 CIDR blocks to be used in the VPC
  public_ipv4_cidr_blocks    = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]
  
  # Total IPv4 CIDR block for the VPC
  total_ipv4_cidr_block      = "10.0.0.0/16"
  
  # The number of days to retain VPC logs
  vpc_log_retention          = 90
  
  # Name of the environment (e.g., vbn-ap-south-1)
  env_name                   = "vbn-ap-south-1"
  
  # Name of the layer (e.g., vbn-ap-south-1)
  layer_name                 = "vbn-ap-south-1"
  
  # Name of the module
  module_name                = "base"
}