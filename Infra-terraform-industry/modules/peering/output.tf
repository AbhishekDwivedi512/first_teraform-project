output "peering_names" {
  value = [
    azurerm_virtual_network_peering.peer1.name,
    azurerm_virtual_network_peering.peer2.name
  ]
}