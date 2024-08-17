module "teste" {
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/global_accelerator?ref=main"
}

# This module pulls configurations from the specified GitHub repository and module path.
# It sets the source of the module from a GitHub repo to configure Global Accelerator as per the standards provided by the SaaS Company.
# Ensure that the repo and branch/tag exist and are accessible from your environment.