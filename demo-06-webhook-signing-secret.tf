# Nonfunctional synthetic values for a security review demonstration.
locals {
  webhook_signing_secret = "DEMO_ONLY_NOT_A_REAL_WEBHOOK_SIGNING_SECRET"
}

resource "terraform_data" "security_demo" {
  input = {
    callback_url   = "https://webhook.example.invalid/events"
    signing_secret = local.webhook_signing_secret
  }
}

output "webhook_configuration" {
  value = terraform_data.security_demo.input
}
