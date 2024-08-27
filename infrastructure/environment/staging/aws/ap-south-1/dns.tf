module "dns" {
  delegated    = false
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name     = "staging-ap-south-1"
  layer_name   = "staging-ap-south-1"
  module_name  = "dns"
  domain       = "example.com"
}

# Module "dns" configuration:
# delegated: Boolean to denote if DNS is delegated.
# source: The source repository containing the Terraform module.
# env_name: Name of the environment.
# layer_name: The name of the layer for the environment.
# module_name: The name of the module.
# domain: The DNS domain to manage.