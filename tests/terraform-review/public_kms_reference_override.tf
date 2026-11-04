terraform {
  required_version = ">= 1.4.0"
}

locals {
  customer_archive_kms_key_arn = "arn:aws:kms:eu-central-1:123456789012:key/7f4c14a8-6d40-4c73-a91e-c58a9b52e217"
  customer_archive_region      = "eu-central-1"
}
