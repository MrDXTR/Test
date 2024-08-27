module "External_State" {
  # Specifies the backend type for the module
  backend_type = ""

  # Configuration settings for the backend
  config = ""

  # Environment name, typically specifying the region and stage
  env_name = "staging-ap-south-1"

  # Layer name for identification purposes
  layer_name = "ads"

  # Corrected to match env_name
  layer_name = "staging-ap-south-1"

  # Module name for identification
  module_name = "External_State"

  # Module source, can be a local path or a git repository
  source = "git::?ref="
}