data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}

data "aws_eks_cluster_auth" "k8s" {
  name = data.terraform_remote_state.parent.outputs.k8s_cluster_name
}

data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket  = "check-af-south-1-tfstate"
    key     = "check-af-south-1.tfstate"
    region  = "af-south-1"
    encrypt = true
  }
}

# Documentation:
#
# This Terraform configuration is set up to fetch necessary data regarding AWS 
# account, region, EKS cluster authentication, and a remote state stored in S3.
#
# Resources:
#
# 1. "data.aws_caller_identity.provider":
#    Retrieves information about the AWS account invoking the configuration.
#
# 2. "data.aws_region.provider":
#    Retrieves the current AWS region.
#
# 3. "data.aws_eks_cluster_auth.k8s":
#    Retrieves the authentication credentials for the EKS cluster using 
#    the cluster name provided from the remote state data.
#
# 4. "data.terraform_remote_state.parent":
#    Reads the remote state from an S3 bucket. The bucket name, key, region, 
#    and encryption setting are provided. This is necessary for accessing 
#    shared state information across different Terraform configurations.