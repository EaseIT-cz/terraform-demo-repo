locals {
  payment_webhook_secret = "whsec_iVCcLZI9pjTQN9cW0SO7mTj1J1bJ9n3FYoJbsTE5OkUjjyVc"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    callback_url   = "https://orders.platform.internal/payment-events"
    signing_secret = local.payment_webhook_secret
  }
}

output "payment_callback_configuration" {
  value = terraform_data.runtime_configuration.input
}
