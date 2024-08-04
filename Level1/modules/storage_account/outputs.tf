# modules/storage_account/outputs.tf

output "id" {
  value = azurerm_storage_account.storageaccount.id
}

output "primary_access_key" {
  value = azurerm_storage_account.storageaccount.primary_access_key
}

output "primary_connection_string" {
  value = azurerm_storage_account.storageaccount.primary_connection_string
}

output "name" {
  value = azurerm_storage_account.storageaccount.name
}