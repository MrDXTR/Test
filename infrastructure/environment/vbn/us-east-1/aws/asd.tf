module "asd" {
  # The body of the SSL certificate
  certificate_body      = ""

  # Path to the file containing the SSL certificate body
  certificate_body_file = ""

  # The certificate chain for the SSL certificate
  certificate_chain      = ""

  # Path to the file containing the SSL certificate chain
  certificate_chain_file = ""

  # The domain the SSL certificate is for
  domain = ""

  # Environment name
  env_name  = "vbn-us-east-1"

  # Layer name
  layer_name = "vbn-us-east-1"

  # Module name
  module_name = "asd"

  # The private key for the SSL certificate
  private_key      = ""

  # Path to the file containing the private key for the SSL certificate
  private_key_file = ""

  # Source of the module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/external_ssl_cert?ref=main"
}