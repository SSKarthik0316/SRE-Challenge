# outputs.tf

output "storage_account_id" {
  value = module.storage_account.id
}

output "storage_account_primary_access_key" {
  value     = module.storage_account.primary_access_key
  sensitive = true
}

output "storage_account_primary_connection_string" {
  value     = module.storage_account.primary_connection_string
  sensitive = true
}

output "container_id" {
  value = module.storage_container.id
}
