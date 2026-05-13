
module "rg" {
  source = "./modules/rg"

  for_each = var.rgs

  rg_name  = each.value.name
  location = each.value.location
}
module "vnet" {
  source = "./modules/vnet"

  for_each = var.vnets

  vnet_name           = each.value.name
  resource_group_name = each.value.resource_group
  location            = each.value.location
  address_space       = each.value.address_space
}
module "subnet" {
  source = "./modules/subnet"

  for_each = var.subnets

  subnet_name         = each.value.name
  resource_group_name = each.value.resource_group_name
  vnet_name           = each.value.virtual_network_name
  address_prefixes    = each.value.address_prefixes
}

module "peering" {
  source = "./modules/peering"

  peer1_name = "rg1-vnet1-to-rg2-vnet1"
  peer2_name = "rg2-vnet1-to-rg1-vnet1"

  resource_group_name_1 = "rg-1"
  resource_group_name_2 = "rg-2"

  vnet_name_1 = "rg1-vnet1"
  vnet_name_2 = "rg2-vnet1"

  remote_vnet_id_1 = module.vnet["vnet2"].vnet_id
  remote_vnet_id_2 = module.vnet["vnet1"].vnet_id
}