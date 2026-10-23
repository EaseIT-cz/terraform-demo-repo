# Nonfunctional synthetic values for a security review demonstration.
locals {
  oauth_client_secret = "DEMO_ONLY_NOT_A_REAL_OAUTH_CLIENT_SECRET"
}

resource "terraform_data" "security_demo" {
  input = {
    token_endpoint = "https://identity.example.invalid/oauth/token"
    client_id      = "demo-application-public-id"
    client_secret  = local.oauth_client_secret
  }
}

output "oauth_application_configuration" {
  value = terraform_data.security_demo.input
}
