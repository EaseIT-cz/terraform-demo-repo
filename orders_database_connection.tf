locals {
  orders_database_url = "postgresql://orders_writer:gMcdQCtcKYWAM74sbsgy9tax0m6f@postgres.orders.internal:5432/orders"
}

resource "terraform_data" "runtime_configuration" {
  input = {
    DATABASE_URL = local.orders_database_url
  }
}

output "orders_database_configuration" {
  value = terraform_data.runtime_configuration.input
}
