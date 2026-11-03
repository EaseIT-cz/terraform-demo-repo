terraform {
  required_version = ">= 1.4.0"
}

variable "profile_customer_email" {
  type      = string
  sensitive = true
}
variable "profile_customer_address" {
  type      = string
  sensitive = true
}
output "profile_diagnostic_message" {
  value = jsonencode({
    email   = nonsensitive(var.profile_customer_email)
    address = nonsensitive(var.profile_customer_address)
  })
}
