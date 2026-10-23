variable "customer_profile" {
  type = object({
    email         = string
    date_of_birth = string
    national_id   = string
  })
  sensitive = true
  default = {
    email         = "morgan.reed@customer.internal"
    date_of_birth = "1988-04-17"
    national_id   = "ZX8241937"
  }
}

resource "terraform_data" "customer_diagnostics" {
  input = {
    log_message = "Customer onboarding profile: ${jsonencode(nonsensitive(var.customer_profile))}"
  }
}

output "customer_diagnostics" {
  value = terraform_data.customer_diagnostics.input.log_message
}
