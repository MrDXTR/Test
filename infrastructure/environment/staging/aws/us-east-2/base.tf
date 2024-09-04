module "base" {

  # Private IPv4 CIDR blocks
  private_ipv4_cidr_blocks = ["10.0.128.0/21", "10.0.136.0/21", "10.0.144.0/21"]

  # Public IPv4 CIDR blocks
  public_ipv4_cidr_blocks = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21"]

  # Total IPv4 CIDR block
  total_ipv4_cidr_block = "10.0.0.0/16"

  # VPC log retention period in days
  vpc_log_retention = 90

  # Source of the Terraform module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-us-east-2"

  # Layer name
  layer_name = "staging-us-east-2"

  # Module name
  module_name = "base"
}