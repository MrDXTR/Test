module "s3" {
  # The name of the S3 bucket to create
  bucket_name = "asdsa"

  # Enable or disable same region replication for the S3 bucket
  same_region_replication = false

  # Block public access to the S3 bucket
  block_public_access = true

  # Custom bucket policy to be applied to the S3 bucket
  bucket_policy = {}

  # Enable or disable CORS for the S3 bucket
  cors_enabled = false

  # List of CORS rules to be applied to the S3 bucket
  cors_rule = []

  # Files to be added to the S3 bucket
  files = ""

  # Source of the module to be used for creating the S3 bucket
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_s3?ref=main"

  # Environment name for the S3 bucket
  env_name = "vbn-ap-south-1"

  # Layer name for the S3 bucket
  layer_name = "vbn-ap-south-1"

  # Module name for the S3 bucket
  module_name = "s3"

  # Name of the S3 bucket for logging
  s3_log_bucket_name = ""
}