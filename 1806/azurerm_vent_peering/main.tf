resource "azurerm_virtual_network_peering" "peering" {
    for_each = var.peer
    name = each.value.name
    resource_group_name = each.value.rg
    virtual_network_name = each.value.vnet
    remote_virtual_network_id = each.value.id
  
}