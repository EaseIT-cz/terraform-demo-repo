terraform {
  required_version = ">= 1.4.0"
}

locals {
  orders_runtime_environment = {
    name      = "ORDERS_API_TOKEN"
    valueFrom = "arn:aws:secretsmanager:eu-central-1:123456789012:secret:orders/runtime-AbCdEf"
  }
}
