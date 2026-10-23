locals {
  database_password_secret_arn = "arn:aws:secretsmanager:eu-central-1:682598138277:secret:orders/database-password-Q7rM9x"
  fulfillment_api_secret_name  = "orders/fulfillment/api-token"
}

resource "terraform_data" "runtime_secret_references" {
  input = {
    DATABASE_PASSWORD_SECRET_ARN = local.database_password_secret_arn
    FULFILLMENT_API_SECRET_NAME  = local.fulfillment_api_secret_name
  }
}

output "runtime_secret_references" {
  value = terraform_data.runtime_secret_references.input
}
