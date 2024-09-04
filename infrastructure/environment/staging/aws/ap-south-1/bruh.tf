module "bruh" {
  backend_type = "df"

  config = "sdfsdf"

  env_name = "staging-ap-south-1"

  layer_name = "staging-ap-south-1"

  module_name = "bruh"

  mosame = "sdf"

  source = "git::https://github.com/MrDXTR/Test.git//terraform-cloud-cops/modules/external_state?ref=main"
}

# Module "bruh": external_state
# 
# This module handles the configuration of the external state backend.
# - backend_type: Type of the backend (e.g., s3, azurerm)
# - config: Configuration required for the backend
# - env_name: The environment name (e.g., staging, production)
# - layer_name: The layer or region name
# - module_name: Name of the module
# - mosame: Custom configuration parameter for the module
# - source: Source reference to the module's repository location with optional versioning (e.g. main branch)