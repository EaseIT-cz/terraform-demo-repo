terraform {
  required_version = ">= 1.4.0"
}

locals {
  release_authorized_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFmKyenW9sA/0oQs+UAAbtT2dUoiwoUHo3560k5s0U8X release@orders.example.invalid"
}
