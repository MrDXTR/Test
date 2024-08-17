# Module for DNS configuration
module "dns" {
  delegated   = false
  source      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  env_name    = "vbn-us-east-1"  # Environment name
  layer_name  = "vbn-us-east-1"  # Layer name
  module_name = "dns"            # Module name
  domain      = "example.com"    # Domain name
}