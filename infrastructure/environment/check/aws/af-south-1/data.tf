data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data block fetches details about the AWS account associated with the provided credentials.
data "aws_caller_identity" "current" {}

# This data block fetches the current region configuration from the provider.
data "aws_region" "current" {}