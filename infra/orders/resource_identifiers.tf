terraform {
  required_version = ">= 1.4.0"
}

locals {
  orders_account_id       = "123456789012"
  orders_execution_role   = "arn:aws:iam::123456789012:role/orders-runtime"
  orders_encryption_key   = "arn:aws:kms:eu-central-1:123456789012:key/12345678-1234-4234-9234-123456789abc"
}
