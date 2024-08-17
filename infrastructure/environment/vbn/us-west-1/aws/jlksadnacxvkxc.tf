module "jlksadnacxvkxc" {
  # Path to certificate body string
  certificate_body = ""

  # Path to certificate body file
  certificate_body_file = ""

  # Path to certificate chain string
  certificate_chain = ""

  # Path to certificate chain file
  certificate_chain_file = ""

  # Domain name for the certificate
  domain = ""

  # Environment name, usually specifies the region or env
  env_name = "vbn-us-west-1"

  # Layer name, typically same as environment name
  layer_name = "vbn-us-west-1"

  # Name of the module
  module_name = "jlksadnacxvkxc"

  # Path to private key string
  private_key = ""

  # Path to private key file
  private_key_file = ""

  # Source for the module, specifying the repo and path
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/external_ssl_cert?ref=main"
}