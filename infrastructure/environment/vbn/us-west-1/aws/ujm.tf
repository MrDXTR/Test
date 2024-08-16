module "ujm" {
  # Configuring the 'ujm' module

  # Specifies the type of backend to be used (e.g., "s3", "remote", etc.)
  backend_type = "s3"

  # Contains configuration details for the module (e.g., bucket name, key, region, etc.)
  config = {
    bucket = "your-s3-bucket-name"
    key    = "path/to/your/terraform.tfstate"
    region = "us-west-1"
  }

  # Specifies the environment name
  env_name = "vbn-us-west-1"

  # Specifies the layer name, matching the environment name
  layer_name = "vbn-us-west-1"

  # The name assigned to the module
  module_name = "ujm"
}