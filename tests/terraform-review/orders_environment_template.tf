terraform {
  required_version = ">= 1.4.0"
}

locals {
  orders_environment_template = {
    ORDERS_API_TOKEN         = "$${ORDERS_API_TOKEN}"
    ORDERS_DATABASE_PASSWORD = "<injected-by-runtime-secret-store>"
  }
}
