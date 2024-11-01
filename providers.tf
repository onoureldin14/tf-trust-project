provider "aws" {
  region = var.aws_region
}

provider "tfe" {
  hostname = var.tfc_hostname
}

provider "vault" {
  address = var.vault_url
  token = var.vault_token
}

