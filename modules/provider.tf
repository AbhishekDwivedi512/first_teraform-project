terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}



provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "Central India"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/24"]
  location            = "Central India"
  resource_group_name = "myResourceGroup"
}