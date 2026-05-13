
variable "location"{
    type = list (string)
 
}
variable "vnet_name1"{
    type =string

}
locals {
  subnets = {
    "rg1-sub1" = { name = "subnet1", rg = azurerm_resource_group.rg1.name, vnet = azurerm_virtual_network.rg1-vnet1.name, cidr = ["10.0.0.0/25"] }
    "rg1-sub2" = { name = "subnet2", rg = azurerm_resource_group.rg1.name, vnet = azurerm_virtual_network.rg1-vnet1.name, cidr = ["10.0.0.128/26"] }
    "rg1-sub3" = { name = "subnet3", rg = azurerm_resource_group.rg1.name, vnet = azurerm_virtual_network.rg1-vnet1.name, cidr = ["10.0.0.192/26"] }
    
    "rg2-sub1" = { name = "subnet1", rg = azurerm_resource_group.rg2.name, vnet = azurerm_virtual_network.rg2-vnet1.name, cidr = ["10.0.1.0/25"] }
    "rg2-sub2" = { name = "subnet2", rg = azurerm_resource_group.rg2.name, vnet = azurerm_virtual_network.rg2-vnet1.name, cidr = ["10.0.1.128/26"] }
    "rg2-sub3" = { name = "subnet3", rg = azurerm_resource_group.rg2.name, vnet = azurerm_virtual_network.rg2-vnet1.name, cidr = ["10.0.1.192/26"] }
  }
}