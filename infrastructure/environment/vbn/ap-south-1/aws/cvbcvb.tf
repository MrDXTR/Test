# This module retrieves the global_accelerator module from the specified GitHub repository.
# Ensure Git authentication is set up if accessing a private repository.
# Ref specifies the branch or version tag to use.
module "global_accelerator" {
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/global_accelerator?ref=main"
}