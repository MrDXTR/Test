module "sad" {
  access_entry_type                    = "EC2_LINUX"
  cluster_ip_family                    = "ipv4"
  create                               = true
  create_access_entry                  = true
  create_iam_role                      = true
  create_node_iam_role                 = true
  enable_pod_identity                  = true
  enable_spot_termination              = true
  iam_policy_description               = "Karpenter controller IAM policy"
  iam_policy_name                      = "KarpenterController"
  iam_policy_path                      = "/"
  iam_policy_use_name_prefix           = true
  iam_role_description                 = "Karpenter controller IAM role"
  iam_role_name                        = "KarpenterController"
  iam_role_path                        = "/"
  iam_role_use_name_prefix             = true
  irsa_assume_role_condition_test      = "StringEquals"
  irsa_namespace_service_accounts      = ["karpenter:karpenter"]
  namespace                            = "kube-system"
  node_iam_role_attach_cni_policy      = true
  node_iam_role_path                   = "/"
  node_iam_role_use_name_prefix        = true
  queue_managed_sse_enabled            = true
  rule_name_prefix                     = "Karpenter"
  service_account                      = "karpenter"
  source                               = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/karpenter?ref=v20.22.0"
} 

# Documentation:
# This module configures Karpenter within an EKS cluster. Karpenter is an open-source, flexible, and high-performance Kubernetes cluster autoscaler built for improving Kubernetes operations and end-user experiences.

# - `access_entry_type`: Type of access entry (e.g., EC2_LINUX).
# - `cluster_ip_family`: Specifies the IP family for the EKS cluster (e.g., ipv4).
# - `create`: Boolean to specify if resources should be created.
# - `create_access_entry`: Boolean to specify if an access entry should be created.
# - `create_iam_role`: Boolean to specify if an IAM role should be created.
# - `create_node_iam_role`: Boolean to specify if a node IAM role should be created.
# - `enable_pod_identity`: Boolean to specify if pod identity should be enabled.
# - `enable_spot_termination`: Boolean to specify if spot termination should be enabled.
# - `iam_policy_description`: Description of the IAM policy for the Karpenter controller.
# - `iam_policy_name`: Name of the IAM policy for the Karpenter controller.
# - `iam_policy_path`: Path for the IAM policy.
# - `iam_policy_use_name_prefix`: Boolean to specify if the IAM policy should use a name prefix.
# - `iam_role_description`: Description of the IAM role for the Karpenter controller.
# - `iam_role_name`: Name of the IAM role for the Karpenter controller.
# - `iam_role_path`: Path for the IAM role.
# - `iam_role_use_name_prefix`: Boolean to specify if the IAM role should use a name prefix.
# - `irsa_assume_role_condition_test`: Condition test for IRSA assume role.
# - `irsa_namespace_service_accounts`: List of namespace and service accounts for IRSA.
# - `namespace`: Kubernetes namespace where Karpenter will be deployed.
# - `node_iam_role_attach_cni_policy`: Boolean to specify if the node IAM role should attach a CNI policy.
# - `node_iam_role_path`: Path for the node IAM role.
# - `node_iam_role_use_name_prefix`: Boolean to specify if the node IAM role should use a name prefix.
# - `queue_managed_sse_enabled`: Boolean to specify if queue managed SSE is enabled.
# - `rule_name_prefix`: Prefix for the rule name.
# - `service_account`: Kubernetes service account for Karpenter.
# - `source`: URL to the source of the Karpenter module.
