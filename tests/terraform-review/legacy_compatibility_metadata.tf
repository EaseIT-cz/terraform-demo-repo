terraform {
  required_version = ">= 1.4.0"
}

locals {
  legacy_integration_user = "demo-bridge"
  compatibility_note      = "maintained for the sandbox importer"
  migration_sentinel      = "SyntheticOnly-river-glass-82-not-a-credential"
}
