module "Staging" {
  ami_type                    = "AL2_x86_64"                          # AMI type for the EKS nodes
  cluster_name                = "testing-us-east-2"                   # Name of the EKS cluster
  control_plane_security_groups = []                                  # Security groups for the control plane
  eks_log_retention           = 7                                     # Number of days to retain logs
  enable_metrics              = true                                  # Enable cluster metrics
  env_name                    = "testing-us-east-2"                   # Environment name
  k8s_version                 = "1.29"                                # Version of Kubernetes
  kms_account_key_arn         = "sdfsf"                               # ARN of the KMS key
  layer_name                  = "testing-us-east-2"                   # Layer name
  max_nodes                   = 5                                     # Maximum number of nodes
  min_nodes                   = 3                                     # Minimum number of nodes
  module_name                 = "Staging"                             # Module name
  node_disk_size              = 20                                    # Disk size for the nodes (in GB)
  node_instance_type          = "t3.medium"                           # Instance type for the nodes
  node_launch_template        = {}                                    # Configuration for launch template
  private_subnet_ids          = ""                                    # Subnet IDs for private subnets
  spot_instances              = false                                 # Use spot instances
  vpc_id                      = "sdf"                                 # VPC ID
  source                      = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_eks?ref=main"  # Source of the Terraform module
}

output "k8s_ca_data" {
  value = module.Staging.k8s_ca_data                                  # CA data for Kubernetes
}

output "k8s_cluster_name" {
  value = module.Staging.k8s_cluster_name                             # Name of the Kubernetes cluster
}

output "k8s_endpoint" {
  value = module.Staging.k8s_endpoint                                 # Endpoint URL for Kubernetes
}

output "k8s_node_group_security_id" {
  value = module.Staging.k8s_node_group_security_id                   # Node group security ID
}

output "k8s_openid_provider_arn" {
  value = module.Staging.k8s_openid_provider_arn                      # OIDC provider ARN for Kubernetes
}

output "k8s_openid_provider_url" {
  value = module.Staging.k8s_openid_provider_url                      # OIDC provider URL for Kubernetes
}

output "k8s_version" {
  value = module.Staging.k8s_version                                  # Kubernetes version
}