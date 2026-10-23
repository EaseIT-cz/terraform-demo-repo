# Synthetic customer data; the input can also receive deployment overrides.
variable "customer_profile" {
  type = object({
    email         = string
    date_of_birth = string
    national_id   = string
  })
  sensitive = true
  default = {
    email         = "synthetic-customer@example.invalid"
    date_of_birth = "1900-01-01"
    national_id   = "DEMO_ONLY_NOT_A_REAL_NATIONAL_ID"
  }
}

resource "terraform_data" "customer_debug_log" {
  input = {
    log_message = "Customer profile: ${jsonencode(nonsensitive(var.customer_profile))}"
  }
}

output "customer_debug_log" {
  value = terraform_data.customer_debug_log.input.log_message
}
