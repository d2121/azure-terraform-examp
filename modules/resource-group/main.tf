resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}
