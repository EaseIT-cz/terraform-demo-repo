terraform {
  required_version = ">= 1.4.0"
}

locals {
  archive_region       = "eu-central-1"
  archive_key_arn      = "arn:aws:kms:eu-central-1:123456789012:key/3b241101-e2bb-4255-8caf-4136c566a962"
}
