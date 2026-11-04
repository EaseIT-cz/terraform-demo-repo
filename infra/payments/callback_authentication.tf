terraform {
  required_version = ">= 1.4.0"
}

locals {
  callback_endpoint = "https://hooks.payments.example.invalid/events"
  callback_authorization = "Basic cGF5bWVudHM6d2ViLWhvb2stcmVjZWl2ZXI"
}
