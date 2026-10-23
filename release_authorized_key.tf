locals {
  release_authorized_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFWwHKk5t5h6HoTAHISm4qQRrziT/YutpiebTgLSBoW2 release@bastion.internal"
}

resource "terraform_data" "release_access" {
  input = {
    authorized_key = local.release_authorized_key
  }
}

output "release_authorized_key" {
  value = terraform_data.release_access.input.authorized_key
}
