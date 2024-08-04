resource "azurerm_resource_group" "Resource_Group" {
  name     = var.name
  location = var.location
  tags     = var.tags
}