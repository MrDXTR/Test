module "bruh" {
  backend_type = "df"

  config = "sdfsdf"

  env_name = "staging-ap-south-1"

  layer_name = "staging-ap-south-1"

  module_name = "bruh"

  mosame = "sdf"

  source = "git::https://github.com/MrDXTR/Test.git//terraform-cloud-cops/modules/external_state?ref=main"
}