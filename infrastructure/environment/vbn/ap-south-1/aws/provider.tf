provider "aws" {
  region               = "ap-south-1"
  allowed_account_ids  = ["992382730686"]

  default_tags = {
    tags = {
      environment_name = "vbn"
      region           = "ap-south-1"
      layer_name       = "vbn-ap-south-1"
      cluster          = "${module.k8scluster.k8s_cluster_name}"
    }
  }
}