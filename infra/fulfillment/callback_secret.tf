terraform {
  required_version = ">= 1.4.0"
}

data "aws_secretsmanager_secret" "callback_signing" {
  name = "fulfillment/callback-signing"
}

data "aws_secretsmanager_secret_version" "callback_signing" {
  secret_id = data.aws_secretsmanager_secret.callback_signing.id
}

locals {
  callback_signing_key = data.aws_secretsmanager_secret_version.callback_signing.secret_string
}
