output "role_arn" {
  value = module.iamrole.role_arn
  description = "The ARN of the IAM role"
}

output "kms_account_key_arn" {
  value = module.base.kms_account_key_arn
  description = "ARN of the KMS account key"
}

output "kms_account_key_id" {
  value = module.base.kms_account_key_id
  description = "ID of the KMS account key"
}

output "private_subnet_ids" {
  value = module.base.private_subnet_ids
  description = "IDs of the private subnets"
}

output "public_nat_ips" {
  value = module.base.public_nat_ips
  description = "Public IPs of the NAT gateways"
}

output "public_subnets_ids" {
  value = module.base.public_subnets_ids
  description = "IDs of the public subnets"
}

output "s3_log_bucket_name" {
  value = module.base.s3_log_bucket_name
  description = "Name of the S3 bucket for logs"
}

output "vpc_id" {
  value = module.base.vpc_id
  description = "ID of the VPC"
}

output "cvb" {
  value = module.input.cvb
  description = "CVB value from input module"
}

output "zone_id" {
  value = module.dns.zone_id
  description = "Zone ID of the DNS"
}

output "name_servers" {
  value = module.dns.name_servers
  description = "List of name servers of the DNS zone"
}

output "domain" {
  value = module.dns.domain
  description = "Domain name of the DNS zone"
}

output "cert_arn" {
  value = module.dns.cert_arn
  description = "ARN of the certificate"
}

output "bucket_arn" {
  value = module.s3.bucket_arn
  description = "ARN of the S3 bucket"
}

output "bucket_id" {
  value = module.s3.bucket_id
  description = "ID of the S3 bucket"
}

output "cloudfront_read_path" {
  value = module.s3.cloudfront_read_path
  description = "CloudFront read path for the S3 bucket"
}

output "workspace_arn" {
  value = module.Something.workspace_arn
  description = "ARN of the workspace"
}

output "workspace_id" {
  value = module.Something.workspace_id
  description = "ID of the workspace"
}

output "workspace_prometheus_endpoint" {
  value = module.Something.workspace_prometheus_endpoint
  description = "Prometheus endpoint of the workspace"
}