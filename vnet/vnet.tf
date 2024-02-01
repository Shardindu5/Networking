terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "=3.85.0"
      }
    }
}

provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

resource "azurerm_virtual_network" "virtual-network" {
    name = var.vnet_name
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = [var.address_prefix]
    subnet = [ 
        {
          name = var.subnet_name
          address_prefix = "10.0.0.0/24"
        }
    ]
}