terraform {
  required_version = ">= 1.4.0"
}

variable "environment" {
  description = "Deployment environment used by the orders service."
  type        = string
  default     = "production"
}

locals {
  service_name = "orders-api"
  endpoint     = "https://api.orders.internal"
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
