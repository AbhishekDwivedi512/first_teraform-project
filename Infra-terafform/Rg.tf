resource "azurerm_resource_group" "rg1" {
  name     = "myResourceGroup1"
  location =  var.location[0]
}
resource "azurerm_resource_group" "rg2"{
  name = "myResourceGroup2"
  location =var.location[0]
}