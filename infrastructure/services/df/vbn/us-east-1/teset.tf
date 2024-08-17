module "teset" {
  // Type of access entry to create
  access_entry_type = "EC2_LINUX"

  // List of SSM parameter ARNs for AMI IDs
  ami_id_ssm_parameter_arns = []

  // The IP family for the cluster (ipv4 or ipv6)
  cluster_ip_family = "ipv4"

  // Name of the cluster
  cluster_name = ""

  // Whether to create resources or not
  create = true

  // Whether to create access entry
  create_access_entry = true

  // Whether to create IAM role for the controller
  create_iam_role = true

  // Whether to create instance profile (boolean expected)
  create_instance_profile = false

  // Whether to create IAM role for nodes
  create_node_iam_role = true

  // Whether to create pod identity association (boolean expected)
  create_pod_identity_association = false

  // Enable IAM roles for service accounts (IRSA)
  enable_irsa = false

  // Enable pod identity for the cluster
  enable_pod_identity = true

  // Enable spot termination handler
  enable_spot_termination = true

  // Description for the IAM policy
  iam_policy_description = "Karpenter controller IAM policy"

  // Name of the IAM policy
  iam_policy_name = "KarpenterController"

  // Path for the IAM policy
  iam_policy_path = "/"

  // List of IAM policy statements
  iam_policy_statements = []

  // Use name prefix for IAM policy
  iam_policy_use_name_prefix = true

  // Description for the IAM role
  iam_role_description = "Karpenter controller IAM role"

  // Max session duration for IAM role (integer expected)
  iam_role_max_session_duration = null

  // Name of the IAM role
  iam_role_name = "KarpenterController"

  // Path for the IAM role
  iam_role_path = "/"

  // Permissions boundary ARN for the IAM role
  iam_role_permissions_boundary_arn = null

  // Map of IAM role policies
  iam_role_policies = {}

  // Tags for the IAM role
  iam_role_tags = {}

  // Use name prefix for IAM role
  iam_role_use_name_prefix = true

  // Condition for IRSA assume role
  irsa_assume_role_condition_test = "StringEquals"

  // List of namespace and service accounts for IRSA
  irsa_namespace_service_accounts = ["karpenter:karpenter"]

  // ARN for the OIDC provider
  irsa_oidc_provider_arn = null

  // Namespace for the service account
  namespace = "kube-system"

  // Additional policies for node IAM role
  node_iam_role_additional_policies = {}

  // ARN for an existing node IAM role
  node_iam_role_arn = null

  // Attach CNI policy to node IAM role
  node_iam_role_attach_cni_policy = true

  // Description for the node IAM role
  node_iam_role_description = null

  // Max session duration for node IAM role (integer expected)
  node_iam_role_max_session_duration = null

  // Name of the node IAM role
  node_iam_role_name = null

  // Path for the node IAM role
  node_iam_role_path = "/"

  // Permissions boundary for node IAM role
  node_iam_role_permissions_boundary = null

  // Tags for the node IAM role
  node_iam_role_tags = {}

  // Use name prefix for node IAM role
  node_iam_role_use_name_prefix = true

  // KMS data key reuse period in seconds (integer expected)
  queue_kms_data_key_reuse_period_seconds = null

  // KMS master key ID for the queue
  queue_kms_master_key_id = null

  // Enable managed SSE for the queue
  queue_managed_sse_enabled = true

  // Name of the queue
  queue_name = null

  // Prefix for naming the rule
  rule_name_prefix = "Karpenter"

  // Service account name
  service_account = "karpenter"

  // Tags for the resources
  tags = {}

  // Source of the module
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git//modules/karpenter?ref=v20.22.0"

  // Environment name
  env_name = "vbn-us-east-1"

  // Layer name
  layer_name = "vbn-us-east-1"

  // Name of the module
  module_name = "teset"
}