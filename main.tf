terraform {
  required_version = ">= 1.4.0"
}

variable "environment" {
  description = "Deployment environment used by the example application."
  type        = string
  default     = "demo"
}

locals {
  service_name = "vornik-security-demo"
  endpoint     = "https://api.example.invalid"
}

resource "terraform_data" "application" {
  input = {
    name        = local.service_name
    environment = var.environment
    endpoint    = local.endpoint
  }
}

output "application_name" {
  value = terraform_data.application.input.name
}
