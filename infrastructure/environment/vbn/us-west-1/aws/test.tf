module "test" {
  access_entry_type                 = "EC2_LINUX"                     # Type of access entry
  cluster_ip_family                 = "ipv4"                          # IP family for the cluster
  create                            = true                            # Flag to create resources
  create_access_entry               = true                            # Flag to create access entry
  create_iam_role                   = true                            # Flag to create IAM role
  create_node_iam_role              = true                            # Flag to create node IAM role
  enable_pod_identity               = true                            # Flag to enable pod identity
  enable_spot_termination           = true                            # Flag to enable spot termination
  iam_policy_description            = "Karpenter controller IAM policy"  # Description of IAM policy
  iam_policy_name                   = "KarpenterController"           # Name of IAM policy
  iam_policy_path                   = "/"                             # Path for IAM policy
  iam_policy_use_name_prefix        = true                            # Flag to use name prefix for IAM policy
  iam_role_description              = "Karpenter controller IAM role"    # Description of IAM role
  iam_role_name                     = "KarpenterController"           # Name of IAM role
  iam_role_path                     = "/"                             # Path for IAM role
  iam_role_use_name_prefix          = true                            # Flag to use name prefix for IAM role
  irsa_assume_role_condition_test   = "StringEquals"                  # Condition test for IRSA assume role
  irsa_namespace_service_accounts   = ["karpenter:karpenter"]         # IRSA namespace service accounts
  namespace                         = "kube-system"                   # Namespace to use
  node_iam_role_attach_cni_policy   = true                            # Flag to attach CNI policy to node IAM role
  node_iam_role_path                = "/"                             # Path for node IAM role
  node_iam_role_use_name_prefix     = true                            # Flag to use name prefix for node IAM role
  queue_managed_sse_enabled         = true                            # Flag to enable queue managed SSE
  rule_name_prefix                  = "Karpenter"                     # Prefix for rule name
  service_account                   = "karpenter"                     # Service account to use
  source                            = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/karpenter?ref=v20.22.0" # Module source
}