# Nonfunctional synthetic values for a security review demonstration.
locals {
  database_url = "postgresql://demo_admin:DEMO_ONLY_NOT_A_REAL_PASSWORD@database.example.invalid:5432/demo"
}

resource "terraform_data" "security_demo" {
  input = {
    DATABASE_URL = local.database_url
  }
}

output "database_connection_url" {
  value = terraform_data.security_demo.input
}
