module "iamrole" {
  # Define allowed Kubernetes services
  allowed_k8s_services = {
    namespace    = "ap-south-1"
    service_name = "staging-ap-south-1"
  }

  # Specify allowed IAM domains
  allowed_iams = ["example.com"]

  # Define extra IAM policies
  extra_iam_policies = [""]

  # IAM policy definition
  iam_policy = {
    Version = "2012-10-17"

    # Policy Simulator API permissions
    Statement = [
      {
        Sid      = "PolicySimulatorAPI"
        Action   = ["iam:GetContextKeysForCustomPolicy", "iam:GetContextKeysForPrincipalPolicy", "iam:SimulateCustomPolicy", "iam:SimulatePrincipalPolicy"]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Sid      = "PolicySimulatorConsole"
        Action   = ["iam:GetGroup", "iam:GetGroupPolicy", "iam:GetPolicy", "iam:GetPolicyVersion", "iam:GetRole", "iam:GetRolePolicy", "iam:GetUser", "iam:GetUserPolicy", "iam:ListAttachedGroupPolicies", "iam:ListAttachedRolePolicies", "iam:ListAttachedUserPolicies", "iam:ListGroups", "iam:ListGroupPolicies", "iam:ListGroupsForUser", "iam:ListRolePolicies", "iam:ListRoles", "iam:ListUserPolicies", "iam:ListUsers"]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  }

  # Links (currently empty)
  links = []

  # Source of the module
  source = "git::undefined?ref=undefined"

  # Environment name
  env_name = "staging-ap-south-1"

  # Layer name
  layer_name = "staging-ap-south-1"

  # Module name
  module_name = "iamrole"

  # Kubernetes trusts configuration
  kubernetes_trusts = {
    open_id_url = module.k8scluster.k8s_openid_provider_url
    open_id_arn = module.k8scluster.k8s_openid_provider_arn
    service_name = "*"
    namespace = "*"
  }
}