terraform {
  required_version = ">= 1.4.0"
}

locals {
  orders_database_uri = "postgresql://orders_service:4f9780c343f990cd81d1e1d16571a7352ac6@orders-db.example.invalid:5432/orders"
}
