resource "azurerm_network_interface" "interface" {
    for_each = var.interface
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rgname

    ip_configuration {
      name = "sandeepnic"
      subnet_id = each.value.subnetid
      private_ip_address_allocation = "Dynamic"
    }   

  
}