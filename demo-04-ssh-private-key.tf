# Nonfunctional synthetic values for a security review demonstration.
locals {
  ssh_private_key = <<-KEY
    -----BEGIN OPENSSH PRIVATE KEY-----
    DEMO_ONLY_NOT_A_VALID_PRIVATE_KEY
    -----END OPENSSH PRIVATE KEY-----
  KEY
}

resource "terraform_data" "security_demo" {
  input = {
    host        = "server.example.invalid"
    private_key = local.ssh_private_key
  }
}

output "ssh_connection_configuration" {
  value = terraform_data.security_demo.input
}
