module "External_State" {
  # Specify the backend type
  backend_type = "asd"

  # Provide configuration details
  config = "asd"

  # Define the environment name
  env_name = "production-us-east-2"

  # Define the layer name
  layer_name = "production-us-east-2"

  # Specify the module name
  module_name = "External_State"

  # Provide the source of the module
  source = "git::?ref="

  # Specify the version of the module
  version = "main"
}