# Nonfunctional synthetic values for a security review demonstration.
locals {
  cloud_access_key_id     = "DEMO_ONLY_NOT_A_REAL_ACCESS_KEY_ID"
  cloud_secret_access_key = "DEMO_ONLY_NOT_A_REAL_SECRET_ACCESS_KEY"
}

resource "terraform_data" "security_demo" {
  input = {
    AWS_ACCESS_KEY_ID     = local.cloud_access_key_id
    AWS_SECRET_ACCESS_KEY = local.cloud_secret_access_key
  }
}

output "cloud_environment" {
  value = terraform_data.security_demo.input
}
