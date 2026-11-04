terraform {
  required_version = ">= 1.4.0"
}

data "aws_secretsmanager_secret" "callback_signing" {
  name = "fulfillment/callback-signing"
}

locals {
  callback_signing_secret_arn = data.aws_secretsmanager_secret.callback_signing.arn
}
