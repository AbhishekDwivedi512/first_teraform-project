resource "azurerm_virtual_network" "rg1-vnet1" {
  name                = var.vnet_name1
  address_space       = ["10.0.0.0/24"]
  location            = var.location[0]
  resource_group_name = "myResourceGroup1"
}
resource "azurerm_virtual_network" "rg2-vnet1" {
  name                = var.vnet_name1
  address_space       = ["10.0.1.0/24"]
  location            = var.location[0]
  resource_group_name = "myResourceGroup2"
}
