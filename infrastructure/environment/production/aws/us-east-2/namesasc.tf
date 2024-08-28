module "namesasc" {
  backend_type = ""

  config = ""

  env_name = "production-us-east-2"

  layer_name = "production-us-east-2"

  module_name = "namesasc"

  source = "git::git@github.com:MrDXTR/Test.git//../terraform-cloud-cops/modules/external_state?ref=main"
}