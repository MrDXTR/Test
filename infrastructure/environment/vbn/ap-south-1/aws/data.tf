data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data source provides information about the AWS account associated with the access key you are using.
# aws_caller_identity.current.id is the AWS Account ID
# aws_caller_identity.current.arn is the ARN associated with the caller identity

# This data source provides the AWS region configuration in your provider setting.
# aws_region.current.name is the name of the region, e.g., 'us-west-2'