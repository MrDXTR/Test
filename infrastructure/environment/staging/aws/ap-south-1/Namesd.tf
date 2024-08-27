module "External_State" {
  backend_type  = "asd"
  config        = "sfsdf"
  env_name      = "staging-ap-south-1"
  layer_name    = "staging-ap-south-1"
  module_name   = "External_State"
  source        = "git::?ref="

  # Optional parameters
  # layame       = "ads"
  # mosame       = "sdf"
}

# Documentation
# This module configures an external state for the specified environment.
#
# Parameters:
# - backend_type: The type of backend to use.
# - config: Configuration details for the backend.
# - env_name: The name of the environment.
# - layer_name: The name of the layer.
# - module_name: The name of the module.
# - source: The source of the module; a Git repository URL.
# - Optional - layame: An optional parameter (purpose unspecified).
# - Optional - mosame: Another optional parameter (purpose unspecified).