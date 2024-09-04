module "external_state" {
  # Specify the backend type, e.g., s3, azurerm, gcs, etc.
  backend_type = ""

  # Configuration settings for the backend
  config = {}

  # Environment name
  env_name = "staging-ap-south-1"

  # Layer name
  layer_name = "staging-ap-south-1"

  # Module name
  module_name = "External State"

  # Source of the module, including the repository and reference if needed
  source = "git::<repository_url>?ref=<branch_or_tag>"
}