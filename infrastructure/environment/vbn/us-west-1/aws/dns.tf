# This module configures DNS settings using the aws_dns module from the specified Git repository.
# Parameters:
# - delegated: Whether the DNS is delegated
# - source: The source of the Terraform module
# - env_name: The environment name
# - layer_name: The layer name (usually the same as the environment name)
# - module_name: The logical name of the module
# - domain: The domain name to configure

module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "vbn-us-west-1"
  layer_name   = "vbn-us-west-1"
  module_name  = "dns"
  domain       = "example.com"
}