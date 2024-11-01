data "tfe_team" "owners" {
  name         = "owners"
  organization = var.tfc_organization_name
}