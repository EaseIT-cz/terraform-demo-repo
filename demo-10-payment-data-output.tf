# Deliberately invalid payment fixtures; no real payment details are present.
variable "payment_details" {
  type = object({
    card_number       = string
    verification_code = string
  })
  sensitive = true
  default = {
    card_number       = "DEMO_ONLY_NOT_A_REAL_PAYMENT_CARD"
    verification_code = "DEMO_ONLY_NOT_A_REAL_VERIFICATION_CODE"
  }
}

output "payment_diagnostics" {
  value = jsonencode(nonsensitive(var.payment_details))
}
