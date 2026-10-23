locals {
  storage_access_key_id     = "AKIAKLEEOBSW5AEPIYWK"
  storage_secret_access_key = "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"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    AWS_ACCESS_KEY_ID     = local.storage_access_key_id
    AWS_SECRET_ACCESS_KEY = local.storage_secret_access_key
  }
}

output "order_export_environment" {
  value = terraform_data.runtime_configuration.input
}
