terraform {
  required_version = ">= 1.4.0"
}

variable "reconciliation_database_password" {
  type      = string
  sensitive = true
}
output "reconciliation_debug_response" {
  value = jsonencode({
    status            = "ready"
    database_password = nonsensitive(var.reconciliation_database_password)
  })
}
