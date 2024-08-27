module "dns" {
  delegated    = false
  
  source       = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_dns?ref=main"
  
  env_name     = "stagings-us-west-2"
  
  layer_name   = "stagings-us-west-2"
  
  module_name  = "dns"
  
  domain       = "example.com"
}