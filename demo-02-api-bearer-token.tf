# Nonfunctional synthetic values for a security review demonstration.
locals {
  api_access_token = "DEMO_ONLY_NOT_A_VALID_API_BEARER_TOKEN"
}

resource "terraform_data" "security_demo" {
  input = {
    endpoint      = "https://api.example.invalid"
    authorization = "Bearer ${local.api_access_token}"
  }
}

output "api_request_configuration" {
  value = terraform_data.security_demo.input
}
