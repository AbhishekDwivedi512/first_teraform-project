resource "azurerm_subnet" "all_subnets" {
  for_each             = local.subnets
  
  name                 = each.value.name
  resource_group_name  = each.value.rg
  virtual_network_name = each.value.vnet
  address_prefixes     = each.value.cidr
}