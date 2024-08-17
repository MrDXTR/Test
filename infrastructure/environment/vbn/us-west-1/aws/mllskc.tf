module "mllskc" {
  # The domain name for the module, leave empty if not applicable.
  domain = ""
  
  # Enable or disable automatic DNS. Default is false.
  enable_auto_dns = false
  
  # The endpoint ID for the module, leaving empty if not used.
  endpoint_id = ""
  
  # The environment name, specific to the region and project.
  env_name = "vbn-us-west-1"
  
  # The S3 bucket for flow logs, leave empty if not in use.
  flow_logs_bucket = ""
  
  # Enable or disable flow logs. Default is false.
  flow_logs_enabled = false
  
  # The prefix for flow logs, leave empty if logging not needed.
  flow_logs_prefix = ""
  
  # The layer name, typically matches the environment name.
  layer_name = "vbn-us-west-1"
  
  # The name of the module to help identify resources.
  module_name = "mllskc"
  
  # The hosted zone ID for DNS, leave empty if not used.
  zone_id = ""
  
  # Source URL for the module, referencing the specific GitHub repository and branch.
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/global_accelerator?ref=main"
}