terraform {
  required_version = ">= 1.4.0"
}

locals {
  fulfillment_client_id       = "fa620c53-a14f-4baf-adb4-b67224419925"
  fulfillment_identity_issuer = "https://login.example.invalid/tenant/orders"
  fulfillment_callback_uri    = "https://orders.example.invalid/auth/callback"
}
