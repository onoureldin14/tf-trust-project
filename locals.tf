locals {
  aws_iam_user = "hc-vault-secrets-engine-${random_string.name_suffix.result}"
  tfe_project_name = "${var.project_prefix} ${var.tfc_trust_project_name}"
  tfe_variable_set_name = "${var.project_prefix} ${var.tfc_variable_set_name}"
}