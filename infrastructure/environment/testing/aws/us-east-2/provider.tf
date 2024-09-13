provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = ["992382730686"]

  default_tags {
    tags = {
      environment_name = "testing"
      region           = "us-east-2"
      layer_name       = "testing-us-east-2"
    }
  }
}

# This Terraform configuration sets up the AWS provider with the following details:
# - Region: us-east-2
# - Allowed AWS account IDs: 992382730686
# - Default tags applied to all AWS resources such as:
#   - environment_name: testing
#   - region: us-east-2
#   - layer_name: testing-us-east-2