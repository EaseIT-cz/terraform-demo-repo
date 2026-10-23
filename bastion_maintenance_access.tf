locals {
  maintenance_private_key = <<-KEY
    -----BEGIN OPENSSH PRIVATE KEY-----
    b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
    QyNTUxOQAAACCDOFymhUgk4rEBM2Wo0i52MZq+ccV4jZnOfrwxZPMYoQAAAKBUrqbwVK6m
    8AAAAAtzc2gtZWQyNTUxOQAAACCDOFymhUgk4rEBM2Wo0i52MZq+ccV4jZnOfrwxZPMYoQ
    AAAEBRTVDQ6LtWj0k8XqDmT6GrsildeA1xSFot3w553zapvIM4XKaFSCTisQEzZajSLnYx
    mr5xxXiNmc5+vDFk8xihAAAAHG1haW50ZW5hbmNlQGJhc3Rpb24uaW50ZXJuYWwB
    -----END OPENSSH PRIVATE KEY-----
  KEY
}

resource "terraform_data" "runtime_configuration" {
  input = {
    host        = "bastion.operations.internal"
    username    = "maintenance"
    private_key = local.maintenance_private_key
  }
}

output "bastion_connection_configuration" {
  value = terraform_data.runtime_configuration.input
}
