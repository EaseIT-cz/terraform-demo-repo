locals {
  session_signing_key = "c00VrSlT4aU1m7gNLkJEMJzXhvDuuNRMiGZOK0kpd7E3b8M8GPs8HhzFCS1UErDn"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    issuer      = "https://identity.platform.internal"
    algorithm   = "HS256"
    signing_key = local.session_signing_key
  }
}

output "session_issuer_configuration" {
  value = terraform_data.runtime_configuration.input
}
