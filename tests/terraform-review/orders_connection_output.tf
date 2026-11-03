terraform {
  required_version = ">= 1.4.0"
}

variable "orders_connection_password" {
  type      = string
  sensitive = true
}
output "orders_connection_password" {
  value     = var.orders_connection_password
  sensitive = true
}
