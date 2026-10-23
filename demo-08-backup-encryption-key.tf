# Nonfunctional synthetic values for a security review demonstration.
locals {
  backup_master_key = base64encode("DEMO_ONLY_NOT_A_REAL_ENCRYPTION_MASTER_KEY")
}

resource "terraform_data" "security_demo" {
  input = {
    backup_target         = "https://backup.example.invalid"
    encryption_key_base64 = local.backup_master_key
  }
}

output "backup_configuration" {
  value = terraform_data.security_demo.input
}
