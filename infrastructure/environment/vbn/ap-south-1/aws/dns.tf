module "dns" {
  delegated    = false
  source       = "git::https://example.com/terraform-modules/dns-module.git?ref=v1.0.0"
  env_name     = "vbn-ap-south-1"
  layer_name   = "vbn-ap-south-1"
  module_name  = "dns"
  domain       = "example.com"
}

# This Terraform configuration defines a module "dns" with the following parameters:
# - delegated: A boolean indicating if the DNS is delegated. In this case, it is set to false.
# - source: Specifies the source of the module. The provided URI should point to a valid Terraform module repository.
# - env_name: The name of the environment, here set as "vbn-ap-south-1".
# - layer_name: Specifies the layer name, also set as "vbn-ap-south-1".
# - module_name: The name of the module, which is "dns".
# - domain: The domain for the DNS configuration, which is "example.com".