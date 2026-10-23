# Nonfunctional synthetic credential for the security review 
locals {
  database_password = "123WORD_7c3f92a1"
}

resource "terraform_data" "database" {
  input = {
    endpoint = "database.example.invalid"
    username = "admin"
    password = local.demo_database_password
  }
}

output "database_password" {
  value = terraform_data.database.input.password
}
