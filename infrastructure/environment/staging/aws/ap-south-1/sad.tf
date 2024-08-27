module "sad" {
  # The domain name for the Global Accelerator
  domain = "asd"
  
  # Boolean value to enable or disable automatic DNS
  enable_auto_dns = true
  
  # The endpoint ID for the Global Accelerator
  endpoint_id = "fgdg"
  
  # The environment name used for resource names
  env_name = "staging-ap-south-1"
  
  # S3 bucket name for storing flow logs, if flow logs are enabled
  flow_logs_bucket = ""
  
  # Boolean value to enable or disable VPC flow logs
  flow_logs_enabled = false
  
  # Object prefix for flow logs stored in S3
  flow_logs_prefix = ""
  
  # Layer name for the resources
  layer_name = "staging-ap-south-1"
  
  # Module name for identification
  module_name = "sad"
  
  # Route 53 Hosted Zone ID for DNS records
  zone_id = ""
  
  # Source of the module code
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/global_accelerator?ref=main"
}