terraform {
  required_version = ">= 1.4.0"
}

variable "orders_runtime_api_token" {
  type      = string
  sensitive = true
}
locals {
  orders_authorization_headers = {
    Authorization = "Bearer ${var.orders_runtime_api_token}"
  }
}
