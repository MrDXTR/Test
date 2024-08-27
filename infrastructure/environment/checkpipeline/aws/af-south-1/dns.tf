module "dns" {
  delegated    = false

  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"

  env_name     = "checkpipeline-af-south-1"

  layer_name   = "checkpipeline-af-south-1"

  module_name  = "dns"

  domain       = "example.com"
}

# This module provisions a DNS configuration using the specified repository as the source.
# Delegated: Whether the zone is delegated.
# Source: The Git source location of the DNS module.
# Env_name: The name of the environment.
# Layer_name: Name of the layer.
# Module_name: Name of the module.
# Domain: The DNS domain name to manage.