module "iamrole" {
  
  # Allowed Kubernetes services configuration
  allowed_k8s_services = {
    namespace     = "asd"
    service_name  = "asd"
  }
  
  # List of allowed IAM entities
  allowed_iams = ["${module.base.kms_account_key_id}"]
  
  # Additional IAM policies to attach
  extra_iam_policies = ["${module.base.public_nat_ips}"]
  
  # IAM policy definition
  iam_policy = {
    Version = "2012-10-17"
    
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
      },
      {
        Sid      = "WriteBucketss3"
        Action   = ["s3:GetObject*", "s3:PutObject*", "s3:DeleteObject*", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = ["arn:aws:s3:::asdsa", "arn:aws:s3:::asdsa/*"]
      }
    ]
  }
  
  # Optional links
  links = ["s3"]

  # Source module for IAM role creation
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_iam_role?ref=main"

  # Environment name
  env_name = "vbn-ap-south-1"
  
  # Layer name
  layer_name = "vbn-ap-south-1"
  
  # Module name
  module_name = "iamrole"
  
  # Kubernetes trusts configuration
  kubernetes_trusts = {
    open_id_url  = "${module.k8scluster.k8s_openid_provider_url}"
    open_id_arn  = "${module.k8scluster.k8s_openid_provider_arn}"
    service_name = "*"
    namespace    = "*"
  }
}