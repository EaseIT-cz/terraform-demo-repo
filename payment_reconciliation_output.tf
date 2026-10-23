variable "payment_details" {
  type = object({
    card_number       = string
    verification_code = string
  })
  sensitive = true
  default = {
    card_number       = "4111515358630753"
    verification_code = "084"
  }
}

output "payment_reconciliation_details" {
  value = jsonencode(nonsensitive(var.payment_details))
}
