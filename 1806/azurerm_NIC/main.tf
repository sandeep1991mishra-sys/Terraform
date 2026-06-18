resource "azurerm_network_interface" "inter" {
    for_each = var.inter
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg

    ip_configuration {
      name = "sandeepnic"
      subnet_id = each.value.id
      private_ip_address_allocation = "Dynamic"
    }
  
}