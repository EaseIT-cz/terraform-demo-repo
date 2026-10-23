locals {
  fulfillment_api_token = "ful_live_Y4Lpz8c299BiXEPiW7bifveSPcUpiavHKA45X5AR"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    endpoint      = "https://api.fulfillment.internal/v1/orders"
    authorization = "Bearer ${local.fulfillment_api_token}"
  }
}

output "fulfillment_request_configuration" {
  value = terraform_data.runtime_configuration.input
}
