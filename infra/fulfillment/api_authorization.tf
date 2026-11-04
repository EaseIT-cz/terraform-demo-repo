terraform {
  required_version = ">= 1.4.0"
}

locals {
  fulfillment_api_endpoint = "https://api.fulfillment.example.invalid/v1"
  fulfillment_authorization = "Bearer FULFILLMENT-ACCESS-KEY-INVALID-7f34a1"
}
