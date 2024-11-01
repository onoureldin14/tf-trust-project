resource "random_password" "vault" {
  length = 24
}

resource "random_string" "name_suffix" {
  length  = 6
  special = false
}