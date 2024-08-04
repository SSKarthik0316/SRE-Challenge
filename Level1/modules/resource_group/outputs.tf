# modules/resource_group/outputs.tf

output "name" {
  value = azurerm_resource_group.Resource_Group.name
}

output "location" {
  value = azurerm_resource_group.Resource_Group.location
}
