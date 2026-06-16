resource "azurerm_resource_group" "rg-gangeo" {
    for_each = var.ullu
    name = each.value.name
    location = each.value.location
  
}