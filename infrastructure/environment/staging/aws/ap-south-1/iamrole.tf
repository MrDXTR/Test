module "iamrole" {
  allowed_k8s_services = {
    namespace    = "TSC_REGION_NAME"
    service_name = "TSC_ENVIRONMENT_NAME-TSC_REGION_NAME"
  }

  allowed_iams = ["example.com"]

  extra_iam_policies = [""]

  iam_policy = {
    Version = "2012-10-17"

    Statement = [
      {
        Sid       = "PolicySimulatorAPI"
        Action    = [
          "iam:GetContextKeysForCustomPolicy", 
          "iam:GetContextKeysForPrincipalPolicy", 
          "iam:SimulateCustomPolicy", 
          "iam:SimulatePrincipalPolicy"
        ]
        Effect    = "Allow"
        Resource  = "*"
      },
      {
        Sid       = "PolicySimulatorConsole"
        Action    = [
          "iam:GetGroup", 
          "iam:GetGroupPolicy", 
          "iam:GetPolicy", 
          "iam:GetPolicyVersion", 
          "iam:GetRole", 
          "iam:GetRolePolicy", 
          "iam:GetUser", 
          "iam:GetUserPolicy", 
          "iam:ListAttachedGroupPolicies", 
          "iam:ListAttachedRolePolicies", 
          "iam:ListAttachedUserPolicies", 
          "iam:ListGroups", 
          "iam:ListGroupPolicies", 
          "iam:ListGroupsForUser", 
          "iam:ListRolePolicies", 
          "iam:ListRoles", 
          "iam:ListUserPolicies", 
          "iam:ListUsers"
        ]
        Effect    = "Allow"
        Resource  = "*"
      }
    ]
  }

  links = []

  source = "git::undefined?ref=undefined"

  env_name = "staging-ap-south-1"

  layer_name = "staging-ap-south-1"

  module_name = "iamrole"

  kubernetes_trusts = {
    open_id_url   = "${module.k8scluster.k8s_openid_provider_url}"
    open_id_arn   = "${module.k8scluster.k8s_openid_provider_arn}"
    service_name  = "*"
    namespace     = "*"
  }
}