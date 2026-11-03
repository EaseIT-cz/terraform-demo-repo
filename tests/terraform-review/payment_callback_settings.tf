terraform {
  required_version = ">= 1.4.0"
}

locals {
  payment_callback_url            = "https://orders.example.invalid/payment-events"
  payment_callback_signing_secret = "whsec_0751c46855d07b69209aecfb2ba0ee1aef83"
}
