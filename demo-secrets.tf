# Nonfunctional synthetic credential for the security review demonstration.
locals {
  demo_database_password = "DEMO_ONLY_NOT_A_REAL_PASSWORD_7c3f92a1"
}

resource "terraform_data" "demo_database" {
  input = {
    endpoint = "database.example.invalid"
    username = "demo_admin"
    password = local.demo_database_password
  }
}

output "demo_database_password" {
  value = terraform_data.demo_database.input.password
}
