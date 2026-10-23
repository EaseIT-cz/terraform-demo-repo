locals {
  database_password_secret_arn = "arn:aws:secretsmanager:eu-central-1:000000000000:secret:demo/database-password-reference"
  api_token_secret_name        = "demo/application/api-token"
}

resource "terraform_data" "application_secret_references" {
  input = {
    DATABASE_PASSWORD_SECRET_ARN = local.database_password_secret_arn
    API_TOKEN_SECRET_NAME        = local.api_token_secret_name
  }
}

output "configured_secret_references" {
  value = terraform_data.application_secret_references.input
}
