
module "rg" {
  source = "./modules/rg"

  for_each = var.rgs

  rg_name = each.value.name
  location = each.value.location
}
module "vnet" {
  source = "./modules/vnet"

  for_each = var.vnets

  vnet_name         = each.value.name
  resource_group_name = each.value.resource_group
  location          = each.value.location
  address_space     = each.value.address_space
}
module "subnet" {
  source = "./modules/subnet"

  for_each = var.subnets

  subnet_name         = each.value.name
  resource_group_name = each.value.resource_group_name
  vnet_name           = each.value.virtual_network_name
  address_prefixes    = each.value.address_prefixes
}
