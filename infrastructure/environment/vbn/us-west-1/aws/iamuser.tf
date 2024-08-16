module "iamuser" {
  extra_iam_policies = ["trdt", "gh"]
  links = []
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_user?ref=main"
  env_name = "vbn-us-west-1"
  layer_name = "vbn-us-west-1"
  module_name = "iamuser"
  iam_policy = ""
  # You may need additional variables depending on the module's requirements
} 

# Documentation:
# module "iamuser" - This block defines a Terraform module to manage an IAM user.
# - extra_iam_policies: A list of extra IAM policies to attach to the user.
# - links: A list to define any links if necessary (currently empty).
# - source: The source location of the module, pulling from a git repository.
# - env_name: Name of the environment, used within the module.
# - layer_name: Layer name, typically used for organizing resources.
# - module_name: Name of the module, used for identification.
# - iam_policy: IAM policy (currently an empty string). Ensure to populate if required by the module.