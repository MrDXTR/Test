module "iamrole" {
  allowed_k8s_services = []
  allowed_iams = []
  extra_iam_policies = []

  iam_policy = {
    Version = "2012-10-17"
    Statement = [
      {
        Sid = "PolicySimulatorAPI"
        Action = ["iam:GetContextKeysForCustomPolicy", "iam:GetContextKeysForPrincipalPolicy", "iam:SimulateCustomPolicy", "iam:SimulatePrincipalPolicy"]
        Effect = "Allow"
        Resource = "*"
      },
      {
        Sid = "PolicySimulatorConsole"
        Action = ["iam:GetGroup", "iam:GetGroupPolicy", "iam:GetPolicy", "iam:GetPolicyVersion", "iam:GetRole", "iam:GetRolePolicy", "iam:GetUser", "iam:GetUserPolicy", "iam:ListAttachedGroupPolicies", "iam:ListAttachedRolePolicies", "iam:ListAttachedUserPolicies", "iam:ListGroups", "iam:ListGroupPolicies", "iam:ListGroupsForUser", "iam:ListRolePolicies", "iam:ListRoles", "iam:ListUserPolicies", "iam:ListUsers"]
        Effect = "Allow"
        Resource = "*"
      }
    ]
  }

  links = []

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_role?ref=main"

  env_name = "staging-us-east-2"
  layer_name = "staging-us-east-2"
  module_name = "iamrole"

  kubernetes_trusts = {
    open_id_url = module.k8scluster.k8s_openid_provider_url
    open_id_arn = module.k8scluster.k8s_openid_provider_arn
    service_name = "*"
    namespace = "*"
  }
}