module "External_State" {
  backend_type = "asd"

  config = "dsf"

  env_name = "staging-ap-south-1"

  layer_name = "staging-ap-south-1"

  module_name = "External_State"

  mosame = "fdds"

  source = "git::?ref="

  version = "main"
}

# Module block to define an external state configuration
# backend_type    - Type of backend storage to use for the state
# config          - Configuration details for the backend
# env_name        - Environment name (e.g., staging, production)
# layer_name      - The specific layer or environment region name
# module_name     - The name of the module for distinction
# mosame          - Additional custom configuration detail (purpose unclear)
# source          - Git repository source for the module code
# version         - Version or branch of the module to use