locals {
  orders_oauth_client_secret = "6emGPUmZT2JVwoomKmUvdnVo1wsKRRrJ6JDKdbtYj9APdyCV"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    token_endpoint = "https://identity.platform.internal/oauth/token"
    client_id      = "orders-service"
    client_secret  = local.orders_oauth_client_secret
  }
}

output "orders_identity_configuration" {
  value = terraform_data.runtime_configuration.input
}
