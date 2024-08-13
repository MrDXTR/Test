module "dns" {
  delegated     = false
  source        = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name      = "vbn-ap-south-1"
  layer_name    = "vbn-ap-south-1"
  module_name   = "dns"
  domain        = "example.com"
}

# This module sets up DNS resources in AWS.
# Parameters:
# - delegated: Boolean to indicate if DNS management is delegated.
# - source: The source location of the module.
# - env_name: The environment name
# - layer_name: The layer name
# - module_name: The name of the module
# - domain: The domain name to configure in DNS