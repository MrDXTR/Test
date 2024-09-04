module "External_State" {
  # Specify the backend type
  backend_type = "s3"

  # Provide configuration details
  config = {
    bucket = "my-terraform-state-bucket"
    key    = "path/to/my/key"
    region = "us-east-2"
  }

  # Define the environment name
  env_name = "production-us-east-2"

  # Define the layer name
  layer_name = "production"

  # Specify the module name
  module_name = "External_State"

  # Provide the source of the module
  source = "git::https://example.com/path/to/module.git?ref=main"

  # Specify the version of the module
  version = "1.0.0"
}