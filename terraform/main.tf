terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }
}

provider "aws" {
  region  = local.region
  profile = ""

  default_tags {
    tags = {
      app-stack     = "provisioner"
      repository    = "terraform",
      business-unit = "devops",
      owner         = "devops",
      terraform     = "true",
      environment   = local.env
    }
  }
}

# data source get AccountID,UserID,ARN in which Terraform is authorized
data "aws_caller_identity" "current" {}

# Please only change the config here
locals {
  region               = "ap-southeast-2"
  env                  = "development"
  aws_account_id       = data.aws_caller_identity.current.account_id
  project              = "python-dash"
}
