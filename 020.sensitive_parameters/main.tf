locals {
  db_password = {
    admin = "password"
  }
}

output "db_password" {
  value = local.db_password

  // sensitive will prevent sensitive info from being outputting in TF cli and terraform cloud
  sensitive = true
}
