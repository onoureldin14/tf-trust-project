terraform {
    backend "s3" {
        bucket         = "terraform-state-7bqml8"
        key            = "tf-trust-project/terraform.tfstate"
        region         = "eu-west-2"
        dynamodb_table = "terraform-app-state-lock"
    }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.45.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.15.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
  required_version = "~> 1.2"
}