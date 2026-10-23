locals {
  demo_authorized_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDjEHJd2wBsBP9CEaSO6n0Unx1oGMnmR4S8EHNKLXchJ demo@example.invalid"
}

resource "terraform_data" "ssh_authorized_key" {
  input = {
    authorized_key = local.demo_authorized_public_key
  }
}

output "authorized_ssh_public_key" {
  value = terraform_data.ssh_authorized_key.input.authorized_key
}
