terraform {
  required_version = ">= 1.4.0"
}

locals {
  orders_account_id  = "123456789012"
  orders_role_arn    = "arn:aws:iam::123456789012:role/orders-runtime"
  orders_kms_key_arn = "arn:aws:kms:eu-central-1:123456789012:key/a3f7b609-38a8-4a15-8f77-939e6cab5036"
}
