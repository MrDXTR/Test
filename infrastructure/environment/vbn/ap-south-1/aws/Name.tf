module "Name" {
  source       = "git::https://example.com/repo.git?ref=main"
  env_name     = "vbn-ap-south-1"
  layer_name   = "vbn-ap-south-1"
  module_name  = "Name"
}

# This module configuration references a remote module hosted in a Git repository.
# The `source` attribute specifies the location of the remote module.
# The `env_name`, `layer_name`, and `module_name` attributes are variables expected by the module. Make sure these variables are defined within the remote module.
# Ensure the `source` URL is correct and the `ref` parameter points to a valid commit, branch, or tag.