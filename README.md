# Terraform security review demo

Clean Terraform examples for demonstrating secret detection with Vornik Forge
and GitHub pipelines.

## Baseline

`main.tf` describes a small application configuration with an environment,
service name, and example endpoint. It uses Terraform's built-in `terraform_data`
resource, requires Terraform 1.4 or later, and needs no cloud provider or
credentials. It does not provision cloud resources.

To inspect the configuration locally:

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
```

The `main` branch starts with this clean baseline. Subsequent demo PRs will
introduce nonfunctional synthetic credentials, ambiguous secret-like values,
and fixes so the security pipeline can review each change.

Pipeline workflows, scanner policy, and service configuration belong in
`EaseIT-cz/vornik-infra`. This repository contains example code only.
