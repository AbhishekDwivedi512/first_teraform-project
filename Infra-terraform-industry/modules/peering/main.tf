resource "azurerm_virtual_network_peering" "peer1" {
  name                      = var.peer1_name
  resource_group_name       = var.resource_group_name_1
  virtual_network_name      = var.vnet_name_1
  remote_virtual_network_id = var.remote_vnet_id_1

  allow_virtual_network_access = true
}

resource "azurerm_virtual_network_peering" "peer2" {
  name                      = var.peer2_name
  resource_group_name       = var.resource_group_name_2
  virtual_network_name      = var.vnet_name_2
  remote_virtual_network_id = var.remote_vnet_id_2

  allow_virtual_network_access = true
}