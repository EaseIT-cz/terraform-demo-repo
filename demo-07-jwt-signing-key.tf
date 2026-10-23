# Nonfunctional synthetic values for a security review demonstration.
locals {
  jwt_signing_key = "DEMO_ONLY_NOT_A_REAL_JWT_HS256_SIGNING_KEY"
}

resource "terraform_data" "security_demo" {
  input = {
    issuer         = "https://identity.example.invalid"
    algorithm      = "HS256"
    jwt_signing_key = local.jwt_signing_key
  }
}

output "authentication_configuration" {
  value = terraform_data.security_demo.input
}
