locals {
  archive_encryption_key = "N2pwadriYWv9M9HA5A2Z4K5l+3MVBFR/kGxKery+w1c="
}

resource "terraform_data" "runtime_configuration" {
  input = {
    archive_target        = "https://archives.storage.internal/orders"
    encryption_key_base64 = local.archive_encryption_key
  }
}

output "archive_worker_configuration" {
  value = terraform_data.runtime_configuration.input
}
