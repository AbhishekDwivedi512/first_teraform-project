

provider "azurerm" {
  features {
    
  }
}
resource "azurerm_resource_group" "rg1"  {

name = "rgt-1"
location = "central-india"
}
resource "azurerm_virtual_network" "vnet-1" {

  name = "tvnet-1"
  location = "central-india"
  
}