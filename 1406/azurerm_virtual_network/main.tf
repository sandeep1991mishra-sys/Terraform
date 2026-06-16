resource "azurerm_virtual_network" "vnet-gangeo" {
    for_each = var.vnet
    name = each.value.name
    resource_group_name = each.value.rgname
    location = each.value.location
    address_space = each.value.space
  
}