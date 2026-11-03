terraform {
  required_version = ">= 1.4.0"
}

locals {
  archive_cipher         = "AES-256-GCM"
  archive_encryption_key = "b04b9f556071e612f971ce16578499b2e742581710c30820e2e8567884fca5dc"
}
