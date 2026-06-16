resource "azurerm_storage_account" "stg-gangeo" {
    for_each = var.lullu
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rgname
    account_tier = each.value.tier
    account_replication_type = each.value.rep
  
}