provider "aws" {
  region               = "af-south-1"
  allowed_account_ids  = ["992382730686"]
  
  default_tags {
    tags = {
      environment_name = "check"
      region           = "af-south-1"
      layer_name       = "check-af-south-1"
    }
  }
}